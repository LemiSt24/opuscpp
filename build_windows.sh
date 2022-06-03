#!/bin/sh

mkdir -p build_windows
cd build_windows
x86_64-w64-mingw32-gcc -fPIC -c ../opus_wrapper.cc -o opus_wrapper.o -I../opus/build_windows/include
x86_64-w64-mingw32-ar -x ../opus/build_windows/lib/libopus.a
x86_64-w64-mingw32-ar -qc libopus_wrapper.a  *.o
