#!/bin/sh
git submodule update --init --recursive
cd opus
mkdir build
BUILD="$(pwd)/build"
./autogen.sh
./configure --prefix=$BUILD --disable-shared --enable-static --disable-dependency-tracking --disable-maintainer-mode --disable-doc --disable-extra-programs --disable-asm --disable-rtcd --disable-intrinsics
CFLAGS="-fPIC" CPPFLAGS="-fPIC" make -j16
make install
