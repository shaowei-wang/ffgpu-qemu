#!/bin/bash -e
mkdir -p build && cd build

OPTS=" --disable-werror --enable-ffgpu --enable-gtk --enable-vte --enable-virtfs --enable-kvm --disable-user --disable-sdl --target-list=x86_64-softmmu "
echo "configure with $OPTS"
../configure $OPTS && make -j4
