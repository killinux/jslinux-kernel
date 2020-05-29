<pre>
# jslinux-kernel
for jslinux-tap ,the kernel and patch
https://www.iteye.com/blog/haoningabc-2338061

cd linux-2.6.20
cp ../tmp/linuxstart-20120111/config_linux-2.6.20 .config
patch -p1 < ../tmp/linuxstart-20120111/patch_linux-2.6.20
patch -p1 <../2.6.20_common_fixes.patch
#diff -up Makefile ../Makefile >../kernel2.6_makefile.patch
patch -p1 <../kernel2.6_makefile.patch

make ARCH=i386 

---------------

</pre>
