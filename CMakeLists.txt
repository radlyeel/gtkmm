cmake_minimum_required(VERSION 3.18)
project(base)

find_package(PkgConfig)

set(CMAKE_CXX_STANDARD 17)

# get GTKMM_INCLUDE_DIRS, GTKMM_LIBRARY_DIRS, GTKMM_LIBRARIES from ppkg_config command
pkg_check_modules(GTKMM gtkmm-4.0) 

message("GTKMM_INCLUDE_DIRS:")
message("${GTKMM_INCLUDE_DIRS}")

add_subdirectory(src)
