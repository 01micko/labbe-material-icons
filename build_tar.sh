#!/bin/sh
. ./build.conf

echo "Packaging ${PKG}-$VER as ${PKG}-$VER.tar.xz."
[ -f "${PKG}-$VER.tar.xz" ] && rm "${PKG}-$VER.tar.xz"
(cd $PKG-$VER
tar -cJf ../${PKG}-$VER.tar.xz * )
sha256sum ${PKG}-$VER.tar.xz > ${PKG}-$VER.tar.xz.sha256.txt
echo 'Done!'
