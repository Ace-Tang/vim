"Vim color file
" Maintainer: Ace-Tang <aceapril@126.com>
" Last change: 2015 Aug 1
"
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name="thm"

hi Normal term=bold ctermbg=237 ctermfg=DarkCyan  guifg=White guibg=grey20 
hi Comment cterm=bold ctermfg=247
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi IncSearch term=reverse cterm=reverse gui=reverse
hi String cterm=bold ctermfg=150
hi CursorColumn term=reverse ctermbg=Black guibg=grey40
hi Statement term=bold cterm=bold ctermfg=Yellow
hi Number term=bold ctermfg=Magenta guifg=#ffa0a0 guibg=grey5 cterm=bold
hi Cursor guibg=Green guifg=Black
hi Visual term=reverse ctermbg=black guibg=grey60 cterm=reverse
hi Type cterm=bold ctermfg=180
hi Constant cterm=bold  ctermfg=1
hi Identifier cterm=bold  ctermfg=48
hi Function  cterm=bold ctermfg=170
hi Operator cterm=bold	ctermfg=1
hi Directory term=bold ctermfg=LightCyan guifg=Cyan cterm=bold
hi Include cterm=bold ctermfg=167
