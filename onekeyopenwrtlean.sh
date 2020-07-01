#!/bin/bash
cp -r ./SCRIPTS/01_Ready_download.sh ./
bash 01_Ready_download.sh
cd lede
cp -r ../SCRIPTS/02_update_package.sh ./
bash 02_update_package.sh
rm -rf ./tmp && rm -rf .config
cp ../seed/config.seed ./config
make defconfig
make -j8 download V=s 
find ./dl/ -size -1024c -exec rm -f {} \;
chmod -R 755 ./
let make_process=$(nproc)+1
make toolchain/install -j${make_process} V=s
let make_process=$(nproc)+1
make -j${make_process} V=s || make -j${make_process} V=s
