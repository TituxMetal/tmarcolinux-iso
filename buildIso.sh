#!/bin/bash
set -e

[ -d archiso/work ] && sudo rm -rf archiso/work

[ -d archiso/out ] && sudo rm -rf archiso/out

sudo chown -R root:root archiso

sudo cp -rf customFiles/* archiso/

cd archiso && sudo ./build.sh -v

sudo chown -R 1000:1000 .
