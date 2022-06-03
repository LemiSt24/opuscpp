#!/bin/sh
git submodule update --init --recursive
cd opus
mkdir -p build_windows
BUILD="$(pwd)/build_windows"
TOOL_PREFIX="x86_64-w64-mingw32"
./autogen.sh
./configure --host=$TOOL_PREFIX --prefix=$BUILD --disable-shared --enable-static --disable-dependency-tracking --disable-maintainer-mode --disable-doc --disable-extra-programs --disable-asm --disable-rtcd --disable-intrinsics --disable-hardening
sed -i 's/CC = x86_64-w64-mingw32-gcc/CC = x86_64-w64-mingw32-gcc -fPIC/' Makefile
make -j16
make install
