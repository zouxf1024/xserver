#!/bin/sh

export SYSROOT=/opt/rk3036_linux/RK3036-kylin-ubuntu/image/rootfs
export CC=arm-linux-gnueabihf-gcc 
export DEST="`pwd`/../out"
export PKG_CONFIG=pkg-config

#export CFLAGS="--sysroot=$SYSROOT -I$PREFIX/include"
export CFLAGS="--sysroot=$SYSROOT -I$SYSROOT/include -I$SYSROOT/usr/include -I$SYSROOT/usr/include/libdrm -I$DEST/usr/include"
export LDFLAGS="-L$DEST/usr/lib -L$SYSROOT/lib -L$SYSROOT/usr/lib -L$SYSROOT/usr/lib/arm-linux-gnueabihf/"
#-Wl,-rpath-link,$SYSROOT/usr/lib/arm-linux-gnueabihf"
export PKG_CONFIG_PATH="$DEST/usr/lib/pkgconfig:$SYSROOT/usr/lib/pkgconfig:$SYSROOT/usr/share/pkgconfig:$SYSROOT/usr/lib/arm-linux-gnueabihf/pkgconfig"

./configure --host=arm-linux --prefix=/usr --mandir=\${prefix}/share/man \
	--infodir=\${prefix}/share/info  --sysconfdir=/etc \
	--localstatedir=/var lt_cv_prog_compiler_static_works=no lt_cv_prog_compiler_static_works=no --disable-silent-rules --disable-static --without-dtrace --disable-strict-compilation --disable-debug --with-xkb-path=/usr/share/X11/xkb --with-xkb-output=/var/lib/xkb --with-shared-memory-dir=/dev/shm --disable-install-libxf86config --disable-xcsecurity --disable-tslib --disable-xf86bigfont --enable-dpms --disable-config-dbus --disable-config-hal --enable-xorg --disable-linux-acpi --disable-linux-apm --disable-xquartz --disable-xwin --disable-xfake --disable-xfbdev --disable-install-setuid --disable-aiglx --disable-glx-tls --enable-xv --disable-glx --disable-dri --enable-dri2 --enable-glamor --enable-present --enable-dmx --enable-xcsecurity --disable-xmir --disable-libunwind --disable-xvfb --disable-xnest --disable-xwayland

#./configure --host=arm-linux --prefix=/usr --mandir=\${prefix}/share/man \
#	--infodir=\${prefix}/share/info  --sysconfdir=/etc \
#	--localstatedir=/var lt_cv_prog_compiler_static_works=no lt_cv_prog_compiler_static_works=no --disable-silent-rules --disable-static --without-dtrace --disable-strict-compilation --disable-debug --with-xkb-path=/usr/share/X11/xkb --with-xkb-output=/var/lib/xkb --with-shared-memory-dir=/dev/shm --disable-install-libxf86config --disable-xcsecurity --disable-tslib --disable-xf86bigfont --enable-dpms --disable-config-dbus --disable-config-hal --enable-xorg --disable-linux-acpi --disable-linux-apm --disable-xquartz --disable-xwin --disable-xfake --disable-xfbdev --disable-install-setuid --disable-aiglx --disable-glx-tls --enable-xv --disable-glx --enable-dri --enable-dri2 --enable-glamor --enable-present --enable-dmx --with-sha1=libgcrypt --enable-xcsecurity  
