"bg=#07242E  fg=#07242E
set nocompatible
set number 
" set nu! | set nonu to close number
filetype indent on
filetype plugin indent on
syntax on
set autoindent
set cindent
set smartindent
set showmatch
set tabstop=4
set shiftwidth=4
set incsearch
if has('mouse')
  set mouse=a
endif
" make copy and paste available -> set mouse=r
set hlsearch
set history=50
set scrolloff=3
execute pathogen#infect()
set backspace=2
colorschem thm

" 显示/关闭80行的分割
"set colorcolumn=80 显示80列分割
"set colorcolumn=   关闭分割

" 打开/关闭拼写检查
" set spell
" set nospell


" vimgrep use:
":vim/love/*             当前文件夹下的所有文件  
":vim/love/**            当前文件夹及子目录下的所有文件
":cw         查看搜索结果  
":ccl        关闭搜索结果  
":cn         查找下一个  
":cp         查找上一个

"map ->
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
"" 关掉{} 的自动换行
""inoremap { {<CR>}<ESC>kA<CR>

inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

nnoremap ff gg=G
nnoremap <C-B> :CtrlPBuffer
nmap tt :%s/\t/    /g<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <F10> :set paste<CR>
map <F12> :set nopaste<CR>
" show time
noremap <F5> "=strftime("%F %R")<CR>gP

nnoremap <F6> :set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣<CR>:set list<CR>
nnoremap <F7> :set nolist<CR>

"ctags
set tags=tags
set tags+=./tags
map <F8> :TlistToggle<CR>
"set autochdir

"taglist
let Tlist_Show_One_File=1
let Tlist_Use_Left_Window=1
let Tlist_Auto_Open=0
let Tlist_Exit_OnlyWindow=1

"cscope
if filereadable("cscope.out")
	cs add cscope.out
endif

"powerline
""let g:Powerline_symbols='fancy'
""set encoding=utf-8
""set fillchars+=stl:\ ,stlnc:\
""set laststatus=2
""let g:powerline_theme='solarized256'
"set t_Co=256

"syntax
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
""		
""let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 1
""let g:syntastic_check_on_open = 1
""let g:syntastic_check_on_wq = 0
	
"airline
set laststatus=2
let g:airline_poeweline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif

"set guifont=Ubuntu\ Mono\ derivative\ Powerline.ttf\ 11
"set guifont=DejaVu\ Sans\ Mono\ 11
"to use powerline ,you must chang color to 256
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀ '
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:bufferline_echo=0
set t_Co=256

" Javascript  need npm install jshint
let g:syntastic_javascript_checkers = ['jshint']

" go jump guru, godef 
" go get golang.org/x/tools/cmd/guru
" go get github.com/golang/lint
" go get -u github.com/kisielk/errcheck
" go get -u github.com/jstemmer/gotags
" go get golang.org/x/tools/cmd/goimports
" go get golang.org/x/lint/golint
" go get golang.org/x/tools/gopls , 需要设置gopls路径
" let g:ycm_gopls_binary_path = path
"go config


"=====================vim 74 with old vim-go plugin ======================"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"====================vim 80 with new vim-go plugin======================="
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_parameters = 1
""let g:go_fmt_command = "gofmt"
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

" python
" jump to def: ctrl + i, jump back: ctrl + t
let g:jedi#goto_command = "<C-i>"
" auto complete, default is enable
let g:jedi#completions_enabled = 1
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_stubs_command = "<leader>s"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"


"node config


"tarbar: used for go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }

" => vim-multiple-cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" => ctrlp-vim quick search file opened early
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" => vim-markdown
let g:vim_markdown_folding_disabled = 1


" => vim rust
" rust only use racer to complete and jump
" need install github.com/rust-lang/rustfmt
""let g:rustfmt_autosave = 1
set hidden
let g:racer_cmd = "/home/ace/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
let $RUST_SRC_PATH="/home/ace/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/"

"" map for rust racer
" cargo install racer

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gv <Plug>(rust-def-vertical)
au FileType rust nmap gt <Plug>(rust-def-tab)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" => list file tree
" t open file in new tab
" i open file in split
" s open file in Vsplit
map <C-x> :NERDTreeToggle<CR>


"colorschem ,Statement=if , String,  Comment, Number, Constant, Identifier
"=var, Function, Operator , last few was useful in shell


" exec command in vim
" %!python -m json.tool
