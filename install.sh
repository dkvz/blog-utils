#!/bin/bash

set -e

TARGET="${HOME}/.local/bin"

read -p "Install in ${TARGET}? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo ""
  mkdir -pv $TARGET
  ln -sfv "$PWD/scripts/bpost-headlines.sh" "$TARGET/bpost-headlines"
fi
