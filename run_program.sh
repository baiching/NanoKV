#!/bin/sh
#
# this script is for running the program
#


set -e # Exit early if any commands fail


(
  cd "$(dirname "$0")" # Ensure compile steps are run within the repository directory
  cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/home/baiching/projects/vcpkg/scripts/buildsystems/vcpkg.cmake
  cmake --build ./build
)


exec ./build/server "$@"
