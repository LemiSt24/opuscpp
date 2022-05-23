#!/bin/sh
git submodule update --init --recursive
cd opus
mkdir -p build
BUILD="$(pwd)/build"
./autogen.sh
./configure --prefix=$BUILD --disable-shared --enable-static --disable-dependency-tracking --disable-maintainer-mode --disable-doc --disable-extra-programs --disable-asm --disable-rtcd --disable-intrinsics
sed -i 's/CC = gcc/CC = gcc -fPIC/' Makefile
make -j16
make install
