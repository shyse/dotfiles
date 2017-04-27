#!/bin/bash

DOTFILES=(.bashrc .vimrc .zshrc)

for file in ${DOTFILES[@]}
do
  ln -fnsv `pwd`/$file $HOME/$file
done

