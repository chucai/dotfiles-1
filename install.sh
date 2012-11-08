#!/bin/bash
DOTFILES_ROOT=$( cd "$( dirname "$0" )" && pwd )

echo "Symbol link dot files to home directory..."
for f in $DOTFILES_ROOT/dot.*
do
    # /path/to/dotfiles_root/dot.bash_profile  ====>   .bash_profile
    dot_file_name=${f##*dot}
    ln -sfn $f $HOME/$dot_file_name
done
echo "Symbol link dot files to home directory done"

echo "Initialize vim..."
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/temp
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim +BundleInstall +qall
echo "Initialize vim done"
