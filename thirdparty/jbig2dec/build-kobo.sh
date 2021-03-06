#! /bin/sh

TRIPLE=arm-linux-gnueabihf
export CFLAGS='-O2 -mcpu=cortex-a9 -mfpu=neon'
export CXXFLAGS="$CFLAGS"
export AS=${TRIPLE}-as

./configure --host=${TRIPLE} && make
