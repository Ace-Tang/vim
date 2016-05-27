#!/bin/bash
set -o errexit -o pipefail -o nounset

cp vimrc $HOME/.vimrc
cp -r vim $HOME/.vim
cp thm.vim /usr/share/vim/vim74/colors/thm.vim
