#!/bin/bash

(
  which brew >/dev/null || exit 1
  brew update
  brew outdated qt5 || brew install qt5
)
