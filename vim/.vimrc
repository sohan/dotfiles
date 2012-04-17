syntax on
filetype indent on
filetype plugin indent on
set nu
set ic
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

autocmd FileType html,js,php
 \ setlocal shiftwidth=2 |
 \ setlocal tabstop=2 |
 \ setlocal softtabstop=2 |
 \ setlocal smartindent

highlight SpellBad cterm=underline gui=undercurl guisp=Orange ctermbg=Grey
if has("gui_running") 
  highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif 

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
