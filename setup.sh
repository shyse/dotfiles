#!/bin/bash

DOTFILES=(.bashrc .vimrc .zshrc)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

for file in ${DOTFILES[@]}
do
  ln -fnsv ${SCRIPT_DIR}/$file $HOME/$file
done
