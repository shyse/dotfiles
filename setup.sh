#!/bin/bash

DOTFILES=(.bashrc .vimrc .zshrc)

for file in ${DOTFILES[@]}
do
  ln -fnsv $HOME/dotfiles/$file $HOME/$file
done

