#!/bin/bash

set -e

echo "Building Coremark Linux and Baremetal"
cd riscv-coremark
./build-coremark.sh

echo "Moving Coremark binary to overlay"
cd ..
mkdir -p overlay
mv riscv-coremark/*.riscv* overlay/
mv riscv-coremark/*.bin* overlay/
# mv riscv-coremark/*.dump* overlay/
mv riscv-coremark/*.asm* overlay/
