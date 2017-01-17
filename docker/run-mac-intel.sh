#!/bin/bash

cd /shaderframework || exit 1

cmake . || exit 2

make || exit 3
