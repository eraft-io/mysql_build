#!/bin/bash

set -xe

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
SRCPATH=$(cd $SCRIPTPATH; pwd -P)
NPROC=$(nproc || grep -c ^processor /proc/cpuinfo)

build_dir="$SRCPATH/build_"
mkdir -p $build_dir && cd $build_dir
cmake "$SRCPATH" \
    -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/usr/local/boost
make
