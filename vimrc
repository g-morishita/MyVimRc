set runtimepath+=userautoload/*
runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim

" This is a setting to use gruvbox. Modified 2018.8.11
syntax enable
set background=dark
colorscheme gruvbox
set t_Co=256

" filetype plugin indent on

" to make backspace work correctly
" set backspace=2

" disabled jedi-vim auto completion
" let g:jedi#completions_enabled = 0
