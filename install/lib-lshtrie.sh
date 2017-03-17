#!/bin/sh
cd "$(dirname "$0")"
. ./_ins_utilities.sh

ins_git_get https://github.itu.dk/maau/lsh-trie &&
  if [ "$1" != "--just-get" ]; then
    mkdir build &&
    cd build &&
    cmake -DCMAKE_BUILD_TYPE=Release .. &&
    make -j4
  fi