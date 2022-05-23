#!/bin/sh

mkdir -p build
cd build
gcc -fPIC -c ../opus_wrapper.cc -o opus_wrapper.o
ar -x ../opus/build/lib/libopus.a
ar -qc libopus_wrapper.a  *.o
