#!/bin/sh
cd linux-2.6.20
cp ../src/config_linux-2.6.20 .config
patch -p1 < ../src/patch_linux-2.6.20
patch -p1 <../patch/2.6.20_common_fixes.patch
#diff -up Makefile ../Makefile >../kernel2.6_makefile.patch
patch -p1 <../patch/kernel2.6_makefile.patch

cd ../src
make 
make kernel
