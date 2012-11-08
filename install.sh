#!/bin/bash
DOTFILES_ROOT=$( cd "$( dirname "$0" )" && pwd )
echo $DOTFILES_ROOT


ln -sfn "$DOTFILES_ROOT/vimrc" ~/.vimrc
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/temp
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
echo "about to install bundles"
vim +BundleInstall +qall
