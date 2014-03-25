execute pathogen#infect()

syntax on
filetype indent on
filetype plugin indent on
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

au BufNewFile,BufRead *.less set filetype=less
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
set tags=./tags,../.git/tags,.git/tags,../../.git/tags,../../../.git/tags,../../../../.git/tags
"open ctag in new vsplit
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

":inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"set dictionary="/usr/dict/words"

set runtimepath^=~/.vim/bundle/ctrlp.vim
let mapleader=","
nnoremap <leader>. :CtrlPBuffer<cr>
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|node_modules|scratch|fixtures|env)$'

"jedi don't show docstring window
autocmd FileType python setlocal completeopt-=preview
let g:jedi#usages_command = 0

"line wraps
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj   

"NERDtree is ctrl d
nmap <silent> <C-D> :NERDTreeToggle<CR>
