# common macros
# this file will also load platform specific macros

# platform specific macros
if(WIN32)
    include(${CMAKE_MODULE_PATH}/macros/windows.cmake)
elseif(UNIX)
    include(${CMAKE_MODULE_PATH}/macros/unix.cmake)

    if(APPLE)
        include(${CMAKE_MODULE_PATH}/macros/macos.cmake)
    else()
        include(${CMAKE_MODULE_PATH}/macros/linux.cmake)
    endif()
endif()

# override find_package function
macro(find_package)  # cmake-lint: disable=C0103
    string(TOLOWER "${ARGV0}" ARGV0_LOWER)
    if(
        # Boost is resolved once by the top-level project (either via the system package or
        # FetchContent). Skip any later re-resolution from submodules (e.g. Simple-Web-Server),
        # which can request header-only components such as `system` that no longer ship a
        # standalone CMake config in modern Boost (1.90+), breaking the legacy lookup.
        (("${ARGV0_LOWER}" STREQUAL "boost") AND (DEFINED FETCH_CONTENT_BOOST_USED OR Boost_FOUND)) OR
        (("${ARGV0_LOWER}" STREQUAL "libevdev") AND DEFINED EXTERNAL_PROJECT_LIBEVDEV_USED)
    )
        # Do nothing, as the package has already been provided
    else()
        # Call the original find_package function
        _find_package(${ARGV})
    endif()
endmacro()
