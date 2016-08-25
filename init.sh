#!/bin/bash
set -o errexit -o pipefail -o nounset

rc_dir="$HOME/.vimrc"
vim_dir="$HOME/.vim"
color="/usr/share/vim/vim74/colors/thm.vim"

if [ ! -e $rc_dir ];then
	cp vimrc $rc_dir
fi
if [ ! -e $vim_dir ];then
	cp -r vim $vim_dir
fi
if [ ! -e $color ];then
	cp thm.vim $color
fi

cp gobin/* /usr/local/bin/
