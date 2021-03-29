# vim plugin and config

1. change config in init.share
2. bash init.sh

## golang 补全,代码高亮

vim-go: git clone https://github.com/fatih/vim-go.git
高亮等配置从doc/vim-go.txt 抄到 vimrc中, 不同版本配置不一样

## 安装 YouCompleteMe

rust 用ycm补全有问题,用racer就可以了
golang 的ycm支持下载gopls

vim --version (需要支持python，output中要看到 +python3或 +python2)

1. git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle
2. 下载依赖git submodule update --init --recursive
3. 系统依赖 sudo apt install build-essential cmake python3-dev
4. 安装补全
> rust: python3 install.py --rust-completer
> golang: python3 install.py --go-completer
> c: python3 install.py --clang-completer
> 安装所有语言以来 python3 install.py --all

## go plugin repo

1. goimports 自动导入依赖包  `go get golang.org/x/tools/cmd/goimports`
2. govendor  包管理 `go get github.com/kardianos/govendor`
3. guru      词法分析和跳转等  `go get golang.org/x/tools/cmd/guru`
