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

cp vimrc $rc_dir
cp -r vim $vim_dir
cp thm.vim $color
cp gobin/* /usr/local/bin/
