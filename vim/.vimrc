"PLUGINS
call plug#begin('~/vimfiles/plugged')  			":PlugInstall

Plug 'ryanoasis/vim-devicons'				"font icons (непашет)
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  "Ctrl+N catalog
Plug 'kien/ctrlp.vim'  					"Ctrl+P search files
Plug 'dracula/vim', { 'as': 'dracula' } 		"theme
Plug 'vim-airline/vim-airline' 				"bottom line
Plug 'jiangmiao/auto-pairs' 				"()[]{}
Plug 'tpope/vim-fugitive' 				"git plugin
Plug 'airblade/vim-gitgutter' 				"git marks
Plug 'easymotion/vim-easymotion'
Plug 'ycm-core/YouCompleteMe'				"autocomplete
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


if (has("termguicolors"))
 set termguicolors
endif

let g:ycm_python_interpreter_path = '~\AppData\Local\Programs\Python\Python39\python.exe'
let g:pymode_python = 'python3'
"set pythondll=python3.dll
"set pythonhome=C:\Users\zhenyapaitash\AppData\Local\Programs\Python\Python39
set pythonthreedll=python39.dll
set pythonthreehome=C:\Users\zhenyapaitash\AppData\Local\Programs\Python\Python39
"let g:pymode_rope_complete_on_dot = 0 			"fix конфликтом с python-режим автозаполнения
"let g:pymode_rope_completion = 0			"fix т.к. нежелательно предыдущий
"let g:pymode_rope = 0
"let g:pymode_rope_lookup_project = 0
let g:ycm_show_diagnostics_ui = 0 "Обрубаем YCM



set encoding=utf-8
set t_Co=256
set expandtab
set tabstop=2
set hlsearch
syntax enable
syntax on
set cursorline
set number relativenumber
colorscheme dracula
"set background=dark
"set guifont=FiraCodeLight\ Nerd\ Font\ 14
"set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
let g:airline_powerline_fonts = 1


"из файла
let g:airline#extensions#keymap#enabled = 0 		"Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 	"Кастомная графа положения курсора
let g:Powerline_symbols='unicode' 			"Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 		"Про это позже расскажу

"set showtabline=0 
set wrap linebreak nolist
set textwidth=80
set timeoutlen=10


"MAPPING
map <C-n> :NERDTreeToggle<CR>
map <C-p> :crtlp.vim<CR>
