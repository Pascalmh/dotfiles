#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR
