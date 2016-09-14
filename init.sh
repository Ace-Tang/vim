#!/bin/bash
set -o errexit -o pipefail -o nounset

rc_dir="$HOME/.vimrc"
vim_dir="$HOME/.vim"
color="/usr/share/vim/vim74/colors/thm.vim"

if [ -e $rc_dir ];then
	rm -rf $rc_dir
fi
if [ ! -e $vim_dir ];then
	rm -rf $vim_dir
fi
if [  -e $color ];then
	rm -rf $color
fi

sudo cp vimrc $rc_dir
sudo cp -r vim $vim_dir
sudo cp thm.vim $color
sudo cp gobin/* /usr/local/bin/
