"bg=#07242E  fg=#07242E
set nocompatible
set number 
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
inoremap { {<CR>}<ESC>kA<CR>

inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

nnoremap ff gg=G
nnoremap <C-B> :CtrlPBuffer>
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

"go config
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['go', 'golint']

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

"colorschem ,Statement=if , String,  Comment, Number, Constant, Identifier
"=var, Function, Operator , last few was useful in shell

