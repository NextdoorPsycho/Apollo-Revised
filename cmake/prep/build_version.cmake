# Version identity is the git commit. Nothing about the version is tracked in-tree:
#   * GITHUB_COMMIT     - the full commit hash (this is the release identity)
#   * PROJECT_VERSION   - a numeric MAJOR.MINOR.PATCH that CMake/CPack require, where PATCH is
#                         derived from the git commit count so it increments monotonically with
#                         every commit (no version file to maintain).
# CI may override any of these via environment variables; otherwise they are read from git.

# Optional CI-provided metadata (these are consumed by configured package manifests).
if(DEFINED ENV{BRANCH} AND NOT "$ENV{BRANCH}" STREQUAL "")
    set(GITHUB_BRANCH "$ENV{BRANCH}")
endif()
if(DEFINED ENV{CLONE_URL} AND NOT "$ENV{CLONE_URL}" STREQUAL "")
    set(GITHUB_CLONE_URL "$ENV{CLONE_URL}")
endif()
if(DEFINED ENV{COMMIT} AND NOT "$ENV{COMMIT}" STREQUAL "")
    set(GITHUB_COMMIT "$ENV{COMMIT}")
endif()
if(DEFINED ENV{TAG} AND NOT "$ENV{TAG}" STREQUAL "")
    set(GITHUB_TAG "$ENV{TAG}")
endif()

# Derive the commit hash and a monotonic build number from git, unless already supplied by CI.
set(GIT_COMMIT_COUNT "0")
find_package(Git)
if(GIT_EXECUTABLE)
    execute_process(
            COMMAND ${GIT_EXECUTABLE} -C "${CMAKE_SOURCE_DIR}" rev-list --count HEAD
            OUTPUT_VARIABLE GIT_REV_LIST_COUNT
            RESULT_VARIABLE GIT_REV_LIST_ERROR_CODE
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET)
    if(NOT GIT_REV_LIST_ERROR_CODE AND NOT "${GIT_REV_LIST_COUNT}" STREQUAL "")
        set(GIT_COMMIT_COUNT "${GIT_REV_LIST_COUNT}")
    endif()

    if(NOT DEFINED GITHUB_COMMIT OR "${GITHUB_COMMIT}" STREQUAL "")
        execute_process(
                COMMAND ${GIT_EXECUTABLE} -C "${CMAKE_SOURCE_DIR}" rev-parse HEAD
                OUTPUT_VARIABLE GITHUB_COMMIT
                RESULT_VARIABLE GIT_REV_PARSE_ERROR_CODE
                OUTPUT_STRIP_TRAILING_WHITESPACE
                ERROR_QUIET)
        if(GIT_REV_PARSE_ERROR_CODE)
            set(GITHUB_COMMIT "unknown")
        endif()
    endif()

    if(NOT DEFINED GITHUB_BRANCH OR "${GITHUB_BRANCH}" STREQUAL "")
        execute_process(
                COMMAND ${GIT_EXECUTABLE} -C "${CMAKE_SOURCE_DIR}" rev-parse --abbrev-ref HEAD
                OUTPUT_VARIABLE GITHUB_BRANCH
                OUTPUT_STRIP_TRAILING_WHITESPACE
                ERROR_QUIET)
    endif()
else()
    MESSAGE(WARNING ": Git not found, cannot determine commit/version")
endif()

# A CI build may pin the numeric version explicitly; otherwise derive it from the commit count.
if(DEFINED ENV{BUILD_VERSION} AND NOT "$ENV{BUILD_VERSION}" STREQUAL "")
    set(PROJECT_VERSION "$ENV{BUILD_VERSION}")
    string(REGEX REPLACE "^v" "" PROJECT_VERSION "${PROJECT_VERSION}")  # remove the v prefix if it exists
else()
    set(PROJECT_VERSION "0.0.${GIT_COMMIT_COUNT}")
endif()
set(CMAKE_PROJECT_VERSION "${PROJECT_VERSION}")  # cpack will use this to set the binary versions

MESSAGE("Apollo branch: ${GITHUB_BRANCH}")
MESSAGE("Apollo commit: ${GITHUB_COMMIT}")
MESSAGE("Apollo version (numeric): ${PROJECT_VERSION}")

# set date variables
set(PROJECT_YEAR "1990")
set(PROJECT_MONTH "01")
set(PROJECT_DAY "01")

# Extract year, month, and day (do this AFTER version parsing)
# Note: Cmake doesn't support "{}" regex syntax
if(PROJECT_VERSION MATCHES "^([0-9][0-9][0-9][0-9])\\.([0-9][0-9][0-9][0-9]?)\\.([0-9]+)$")
    message("Extracting year and month/day from PROJECT_VERSION: ${PROJECT_VERSION}")
    # First capture group is the year
    set(PROJECT_YEAR "${CMAKE_MATCH_1}")

    # Second capture group contains month and day
    set(MONTH_DAY "${CMAKE_MATCH_2}")

    # Extract month (first 1-2 digits) and day (last 2 digits)
    string(LENGTH "${MONTH_DAY}" MONTH_DAY_LENGTH)
    if(MONTH_DAY_LENGTH EQUAL 3)
        # Format: MDD (e.g., 703 = month 7, day 03)
        string(SUBSTRING "${MONTH_DAY}" 0 1 PROJECT_MONTH)
        string(SUBSTRING "${MONTH_DAY}" 1 2 PROJECT_DAY)
    elseif(MONTH_DAY_LENGTH EQUAL 4)
        # Format: MMDD (e.g., 1203 = month 12, day 03)
        string(SUBSTRING "${MONTH_DAY}" 0 2 PROJECT_MONTH)
        string(SUBSTRING "${MONTH_DAY}" 2 2 PROJECT_DAY)
    endif()

    # Ensure month is two digits
    if(PROJECT_MONTH LESS 10 AND NOT PROJECT_MONTH MATCHES "^0")
        set(PROJECT_MONTH "0${PROJECT_MONTH}")
    endif()
    # Ensure day is two digits
    if(PROJECT_DAY LESS 10 AND NOT PROJECT_DAY MATCHES "^0")
        set(PROJECT_DAY "0${PROJECT_DAY}")
    endif()
endif()

# Parse PROJECT_VERSION to extract major, minor, and patch components
if(PROJECT_VERSION MATCHES "([0-9]+)\\.([0-9]+)\\.([0-9]+)")
    set(PROJECT_VERSION_MAJOR "${CMAKE_MATCH_1}")
    set(CMAKE_PROJECT_VERSION_MAJOR "${CMAKE_MATCH_1}")

    set(PROJECT_VERSION_MINOR "${CMAKE_MATCH_2}")
    set(CMAKE_PROJECT_VERSION_MINOR "${CMAKE_MATCH_2}")

    set(PROJECT_VERSION_PATCH "${CMAKE_MATCH_3}")
    set(CMAKE_PROJECT_VERSION_PATCH "${CMAKE_MATCH_3}")
endif()

message("PROJECT_NAME: ${PROJECT_NAME}")
message("PROJECT_VERSION: ${PROJECT_VERSION}")
message("PROJECT_VERSION_MAJOR: ${PROJECT_VERSION_MAJOR}")
message("PROJECT_VERSION_MINOR: ${PROJECT_VERSION_MINOR}")
message("PROJECT_VERSION_PATCH: ${PROJECT_VERSION_PATCH}")
message("CMAKE_PROJECT_VERSION: ${CMAKE_PROJECT_VERSION}")
message("CMAKE_PROJECT_VERSION_MAJOR: ${CMAKE_PROJECT_VERSION_MAJOR}")
message("CMAKE_PROJECT_VERSION_MINOR: ${CMAKE_PROJECT_VERSION_MINOR}")
message("CMAKE_PROJECT_VERSION_PATCH: ${CMAKE_PROJECT_VERSION_PATCH}")
message("PROJECT_YEAR: ${PROJECT_YEAR}")
message("PROJECT_MONTH: ${PROJECT_MONTH}")
message("PROJECT_DAY: ${PROJECT_DAY}")

list(APPEND SUNSHINE_DEFINITIONS PROJECT_NAME="${PROJECT_NAME}")
list(APPEND SUNSHINE_DEFINITIONS PROJECT_VERSION="${PROJECT_VERSION}")
list(APPEND SUNSHINE_DEFINITIONS PROJECT_VERSION_MAJOR="${PROJECT_VERSION_MAJOR}")
list(APPEND SUNSHINE_DEFINITIONS PROJECT_VERSION_MINOR="${PROJECT_VERSION_MINOR}")
list(APPEND SUNSHINE_DEFINITIONS PROJECT_VERSION_PATCH="${PROJECT_VERSION_PATCH}")
list(APPEND SUNSHINE_DEFINITIONS PROJECT_VERSION_COMMIT="${GITHUB_COMMIT}")
