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
set mouse=a
set hlsearch
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>kA<CR>

inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
set scrolloff=3
execute pathogen#infect()
set backspace=2
colorschem evening

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
		
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
	
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


"colorschem ,Statement=if , String,  Comment, Number, Constant, Identifier
"=var, Function, Operator , last few was useful in shell

