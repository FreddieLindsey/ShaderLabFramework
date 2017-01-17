#!/bin/bash

[ -f /shaderframework/CMakeCache.txt ] && rm -f /shaderframework/CMakeCache.txt
mkdir -p /shaderframework-working
cp -r /shaderframework/* /shaderframework-working/ || exit 1
cd /shaderframework-working || exit 2

echo -e "\nCMAKE\n"
cmake . || exit 3

echo -e "\nMAKE\n"
make || exit 4

./ShaderLabFramework
