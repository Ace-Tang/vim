# 操作

1. 把小写转换成大写

vim中大小写转化的命令是
gu或者gU
形象一点的解释就是小u意味着转为小写；大U意味着转为大写.

只转化某个单词   guw/gUw
10gU，则进行11行小写到大写的转换
以此类推，就出现其他的大小写转换命令
gU0        ：从光标所在位置到行首，都变为大写
gU$        ：从光标所在位置到行尾，都变为大写

2. 文件 json 格式化

%!python -m json

3. ops

Ctrl + r 回退操作
Ctrl + l/h/k/j 切换右/左/上/下窗口
Ctrl + v 选中多个字符
Ctrl + w 按顺序切换窗口
Ctrl + - 缩小字体
Ctrl + Shift + "+" 放大字体

^: 和其他字符一起, 可以执行到行头的相关操作
$: 和其他字符一起, 可以执行到行尾的相关操作


普通模式下操作

i: 插入模式
a: 后面一格插入模式
s: 删除当前字符, 插入模式
o: 下一行插入
x: 剪切当前字符
dd: 删除当前行
d + Ctrl + $: 删除包括当前字符之后的所有字符
d + Ctrl + ^: 删除包括当前字符之前的所有字符
yy: 复制当前行
p: 复制
u: 取消当前操作
ctrl + R 撤销取消操作
r -> 替换某个字符
Esc: 切换成普通模式
%: 跳到另外一个匹配字符

v: 进入以字符为单位的可视化模式
ctrl + v: 进入以行为单位的可视化模式

对多行一起操作
1)ctrl + v + up/down -> 选择操作行数
2)shift + i -> 开始单行操作
2) esc -> 其他区域也按照类似操作执行


4. 命令行模式使用

:vs 垂直分屏
:sp 水平分屏
:w 保存当前输入
:set paste 复制数据到vim里时去除vim多余操作,如换行补空格等
:(ctrl+r) + (ctrl+w) 复制当前光标在word
:e 替换成另一个文件
:%!python -m json.tool

5. vim多窗口

vim从vim7开始加入了多标签切换的功能，相当于多窗口

标准模式下：
gt , gT 可以直接在tab之间切换

:tabc       关闭当前的tab
:tabo       关闭所有其他的tab
:tabs       查看所有打开的tab
:tabp      前一个
:tabn      后一个

# 代码补全

## golang 补全,代码高亮

vim-go: git clone https://github.com/fatih/vim-go.git
高亮等配置从doc/vim-go.txt 抄到 vimrc中, 不同版本配置不一样

jump to def: ctrl + ] , jump back ctrl + t

一些有用的二进制

1. goimports 自动导入依赖包  `go get golang.org/x/tools/cmd/goimports`
2. govendor  包管理 `go get github.com/kardianos/govendor`
3. guru      词法分析和跳转等  `go get golang.org/x/tools/cmd/guru`
4. godef 跳转

## 安装 YouCompleteMe(YCM)

rust 用ycm补全有问题,用racer就可以了, jump to def: gd/ctrl + i, jump back: ctrl + o
golang 的ycm支持下载gopls

vim --version (需要支持python，output中要看到 +python3或 +python2)

1. git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle
2. 下载依赖git submodule update --init --recursive
3. 系统依赖 sudo apt install build-essential cmake python3-dev
4. 安装补全
> rust: python3 install.py --rust-completer
> golang: python3 install.py --go-completer
> c: python3 install.py --clang-completer
> Python: python3 install.py
> 安装所有语言以来 python3 install.py --all

## c 代码补全

安装包: apt-get install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev

执行 ./install.py --clang-completer 报错
1. Cannot find path to libclang in prebuilt binaries

## python代码补全

ycm的python代码补全不是很好用, 使用jedi

https://github.com/davidhalter/jedi-vim.git

pip install jedi

通过vimrc的配置决定跳转的关键字

## go plugin repo

go get golang.org/x/tools/cmd/guru, 跳转
go get github.com/golang/lint
go get -u github.com/kisielk/errcheck, 
go get -u github.com/jstemmer/gotags, 无用
go get golang.org/x/tools/cmd/goimports, golang自动导入包
go get golang.org/x/lint/golint, golang 格式化工具
go get golang.org/x/tools/gopls , ycm golang补全的工具, 需要设置gopls路径

## cheat.sh-vim

一个强大的备忘录数据库, 可以查到go/python/js各种语言,基于各种linux工具的使用,这个插件可以结合vim使用

# vim 内部搜索

单词搜索/文件搜索

https://github.com/BurntSushi/ripgrep  cargo install ripgrep

rg(ripgrep) 是命令行工具, 配合vim插件(https://github.com/Yggdroot/LeaderF)使用作单词搜索, leaderf本身是做文件搜索的


https://github.com/ctrlpvim/ctrlp.vim 只能做文件搜索



