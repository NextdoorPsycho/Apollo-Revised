#!/usr/bin/env node

import { execFileSync } from 'node:child_process';
import { mkdirSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const scriptDir = dirname(fileURLToPath(import.meta.url));
const repoRoot = join(scriptDir, '..', '..');
const localRef = process.argv[2] || 'master';
const upstreamRef = process.argv[3] || 'sunshine-upstream/master';
const dateStamp = process.argv[4] || new Date().toISOString().slice(0, 10);

function git(args) {
  return execFileSync('git', args, {
    cwd: repoRoot,
    encoding: 'utf8',
    maxBuffer: 1024 * 1024 * 64,
  }).trimEnd();
}

function gitLines(args) {
  const output = git(args);
  return output ? output.split('\n') : [];
}

function shortStat(commit) {
  const line = git(['show', '--shortstat', '--format=', commit]).trim();
  return line || 'No file changes reported.';
}

function changedFiles(commit) {
  return gitLines(['diff-tree', '--no-commit-id', '--name-only', '-r', commit]);
}

function topLevel(path) {
  return path.split('/')[0] || path;
}

function unique(values) {
  return [...new Set(values)].filter(Boolean);
}

function subjectTags(subject, files) {
  const s = subject.toLowerCase();
  const tags = [];
  const has = (needle) => s.includes(needle);
  const pathHas = (needle) => files.some((file) => file.includes(needle));
  const pathStarts = (prefix) => files.some((file) => file.startsWith(prefix));

  if (has('security') || has('csrf') || has('auth') || has('cookie') || has('password') || has('sensitive')) {
    tags.push('security/session');
  }
  if (has('rtsp') || has('packet') || has('network') || has('clientrefreshrate') || has('fec') || pathStarts('src/rtsp')) {
    tags.push('rtsp/network');
  }
  if (has('nvenc') || has('encoder') || has('h.264') || has('hevc') || has('av1') || has('intra') || pathStarts('src/nvenc') || pathHas('video.cpp')) {
    tags.push('encoder/video');
  }
  if (has('macos') || has('osx') || pathStarts('src/platform/macos') || pathStarts('cmake/packaging/macos')) {
    tags.push('macos');
  }
  if (has('linux') || has('pipewire') || has('vulkan') || has('wayland') || pathStarts('src/platform/linux') || pathStarts('packaging/linux')) {
    tags.push('linux/capture');
  }
  if (has('web') || has('vue') || pathStarts('src_assets')) {
    tags.push('web-ui');
  }
  if (has('build') || has('deps') || has('cmake') || pathStarts('cmake') || pathStarts('third-party') || pathStarts('packaging') || pathStarts('docker')) {
    tags.push('build/deps');
  }
  if (has('ci') || pathStarts('.github')) {
    tags.push('ci');
  }
  if (has('docs') || pathStarts('docs') || pathStarts('README.md')) {
    tags.push('docs');
  }
  if (has('l10n') || has('translation') || pathHas('locale')) {
    tags.push('l10n');
  }
  if (tags.length === 0) {
    tags.push('misc');
  }
  return unique(tags);
}

function changeNote(subject, files, tags) {
  const dirs = unique(files.map(topLevel));
  const primary = tags.slice(0, 3).join(', ');
  const dirText = dirs.slice(0, 5).join(', ') || 'unknown paths';
  return `Touches ${primary}; primary path buckets: ${dirText}. Subject indicates: ${subject}.`;
}

function verdict(subject, files, tags, count) {
  const s = subject.toLowerCase();
  const isRuntime = tags.some((tag) => ['security/session', 'rtsp/network', 'encoder/video', 'macos'].includes(tag));
  const onlyNoise = tags.every((tag) => ['ci', 'docs', 'l10n', 'build/deps', 'web-ui'].includes(tag));
  const large = count > 20 || files.some((file) => file.startsWith('src_assets/') || file.startsWith('packaging/'));

  if (isRuntime && !large) {
    return {
      bucket: 'Cherry-pick candidate',
      risk: tags.includes('build/deps') ? 'Medium' : 'Low/Medium',
      note: 'Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.',
    };
  }
  if (isRuntime) {
    return {
      bucket: 'Subsystem review',
      risk: 'Medium/High',
      note: 'Potentially valuable, but broad enough to require a focused manual diff before importing.',
    };
  }
  if (s.includes('vulnerability') || s.includes('security') || s.includes('csrf')) {
    return {
      bucket: 'Cherry-pick candidate',
      risk: 'Medium',
      note: 'Security-related even if most paths are web/build; verify Apollo auth and OTP behavior after import.',
    };
  }
  if (onlyNoise) {
    return {
      bucket: 'Defer',
      risk: 'Low',
      note: 'Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.',
    };
  }
  return {
    bucket: 'Review later',
    risk: large ? 'Medium/High' : 'Medium',
    note: 'Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.',
  };
}

function commitMeta(commit) {
  const fields = git(['show', '--no-patch', '--format=%H%x1f%h%x1f%ad%x1f%an%x1f%s', '--date=short', commit]).split('\x1f');
  return {
    full: fields[0],
    short: fields[1],
    date: fields[2],
    author: fields[3],
    subject: fields.slice(4).join('\x1f'),
  };
}

function bulletList(items, prefix = '- ') {
  return items.map((item) => `${prefix}${item}`).join('\n');
}

function commitSection(commit, index) {
  const meta = commitMeta(commit);
  const files = changedFiles(commit);
  const tags = subjectTags(meta.subject, files);
  const decision = verdict(meta.subject, files, tags, files.length);
  const shownFiles = files.slice(0, 12);
  const more = files.length > shownFiles.length ? `\n- ... ${files.length - shownFiles.length} more file(s)` : '';

  return [
    `## ${index}. ${meta.short} - ${meta.subject}`,
    '',
    `- Date: ${meta.date}`,
    `- Author: ${meta.author}`,
    `- Tags: ${tags.join(', ')}`,
    `- Change size: ${shortStat(commit)}`,
    `- Changed files: ${files.length}`,
    `- Import bucket: ${decision.bucket}`,
    `- Risk: ${decision.risk}`,
    `- Change note: ${changeNote(meta.subject, files, tags)}`,
    `- Import note: ${decision.note}`,
    '- Top files:',
    shownFiles.length ? bulletList(shownFiles) + more : '- None listed',
    '',
  ].join('\n');
}

function collectCandidateRows(commits) {
  return commits.map((commit) => {
    const meta = commitMeta(commit);
    const files = changedFiles(commit);
    const tags = subjectTags(meta.subject, files);
    const decision = verdict(meta.subject, files, tags, files.length);
    return { meta, files, tags, decision };
  });
}

function scoreCandidate(row) {
  let score = 0;
  for (const tag of row.tags) {
    if (tag === 'security/session') score += 100;
    if (tag === 'rtsp/network') score += 90;
    if (tag === 'encoder/video') score += 85;
    if (tag === 'macos') score += 70;
    if (tag === 'build/deps') score += 20;
    if (tag === 'linux/capture') score += 15;
  }
  const s = row.meta.subject.toLowerCase();
  if (s.includes('fix')) score += 15;
  if (s.includes('feat')) score += 5;
  if (row.files.length > 25) score -= 20;
  if (row.tags.includes('web-ui') && !row.tags.includes('security/session')) score -= 25;
  if (row.tags.includes('ci') || row.tags.includes('l10n') || row.tags.includes('docs')) score -= 40;
  return score;
}

function candidateReport(rows, context) {
  const candidates = rows
    .filter((row) => row.decision.bucket === 'Cherry-pick candidate' || row.decision.bucket === 'Subsystem review')
    .map((row) => ({ ...row, score: scoreCandidate(row) }))
    .sort((a, b) => b.score - a.score || a.meta.date.localeCompare(b.meta.date));

  const mustReview = candidates.filter((row) => row.score >= 90);
  const useful = candidates.filter((row) => row.score >= 60 && row.score < 90);
  const guarded = candidates.filter((row) => row.score < 60);

  const renderRows = (list) => list.map((row) => {
    const fileSummary = row.files.slice(0, 5).join(', ') + (row.files.length > 5 ? `, ... ${row.files.length - 5} more` : '');
    return `- \`${row.meta.short}\` - ${row.meta.subject}\n  - Tags: ${row.tags.join(', ')}\n  - Risk: ${row.decision.risk}\n  - Files: ${fileSummary || 'None listed'}\n  - Import note: ${row.decision.note}`;
  }).join('\n\n') || '- None.';

  return [
    `# Sunshine Upstream Cherry-Pick Candidates - ${context.dateStamp}`,
    '',
    `- Local ref: \`${context.localRef}\` at \`${context.localHead}\``,
    `- Upstream ref: \`${context.upstreamRef}\` at \`${context.upstreamHead}\``,
    `- Merge base: \`${context.mergeBase}\``,
    `- Upstream-only commits audited: ${rows.length}`,
    '',
    'This list is generated from the commit-by-commit audit. Treat it as a queue, not approval to import blindly.',
    '',
    '## First-pass Cherry-Pick Queue',
    '',
    renderRows(mustReview),
    '',
    '## Useful After First Queue',
    '',
    renderRows(useful),
    '',
    '## Guarded / Only If Needed',
    '',
    renderRows(guarded),
    '',
    '## Suggested Batch Order',
    '',
    '1. Security/session and config fixes.',
    '2. RTSP/network packet-size and refresh-rate fixes.',
    '3. NVENC/video fixes that do not force large dependency movement.',
    '4. macOS input/build fixes relevant to Apollo packaging.',
    '5. Dependency/build bumps only when required by one of the above.',
    '',
  ].join('\n');
}

mkdirSync(scriptDir, { recursive: true });

const mergeBase = git(['merge-base', localRef, upstreamRef]);
const localHead = git(['rev-parse', '--short', localRef]);
const upstreamHead = git(['rev-parse', '--short', upstreamRef]);
const counts = git(['rev-list', '--left-right', '--count', `${localRef}...${upstreamRef}`]);
const cherryCounts = git(['rev-list', '--left-right', '--cherry-pick', '--count', `${localRef}...${upstreamRef}`]);
const commits = gitLines(['rev-list', '--reverse', `${localRef}..${upstreamRef}`]);
const rows = collectCandidateRows(commits);

const auditHeader = [
  `# Sunshine Upstream Commit-by-Commit Audit - ${dateStamp}`,
  '',
  `- Local ref: \`${localRef}\` at \`${localHead}\``,
  `- Upstream ref: \`${upstreamRef}\` at \`${upstreamHead}\``,
  `- Merge base: \`${mergeBase}\``,
  `- Divergence count, local/upstream: \`${counts}\``,
  `- Cherry-pick-equivalent count, local/upstream: \`${cherryCounts}\``,
  `- Upstream-only commits audited: ${commits.length}`,
  '',
  'Each entry below is generated from Git metadata and changed paths. Use it to decide what deserves manual diff review before cherry-picking into Apollo.',
  '',
].join('\n');

const auditBody = commits.map((commit, index) => commitSection(commit, index + 1)).join('\n');
const auditPath = join(scriptDir, `${dateStamp}-upstream-commit-audit.md`);
const candidatesPath = join(scriptDir, `${dateStamp}-cherry-pick-candidates.md`);

writeFileSync(auditPath, auditHeader + auditBody);
writeFileSync(candidatesPath, candidateReport(rows, {
  dateStamp,
  localRef,
  upstreamRef,
  localHead,
  upstreamHead,
  mergeBase,
}));

console.log(auditPath);
console.log(candidatesPath);
