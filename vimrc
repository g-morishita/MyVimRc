let leader = ","
let mapleader = ","

" {{
" the setting of dein
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('cohama/lexima.vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-surround')
    call dein#add('szw/vim-tags')
    " call dein#add('mattn/emmet-vim') no need for now
    call dein#add('morhetz/gruvbox')
    call dein#add('Shougo/denite.nvim')
    call dein#add('vim-airline/vim-airline')
    call dein#add('davidhalter/jedi')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('zchee/deoplete-jedi')
    call dein#add('w0rp/ale')
    call dein#add('thinca/vim-quickrun')
    call dein#add('Shougo/vimproc.vim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
" }}

" about tabs {{
set tabstop=2 "tabspot is the unmber of spaces a <TAB> counts for.
set shiftwidth=2 " make << >> insert 4 sapces
set expandtab " a tab turns into just spaces
"}}

" UI config {{
set number " show line numbers
set cursorline " highlight the current line
set showmatch " highlight matching {}, [], ()
" }}

" searching setting {{
set incsearch " start searching as soon as you start typing
set hlsearch " highlight the matches
nnoremap <leader><space> :nohlsearch<CR> 
"}} 

" movement setting {{
" move vertically by visula line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap E $
nnoremap B ^

" make $/^ do nothing 
nnoremap $ <nop>
nnoremap ^ <nop>
" }}

" NERDTree setting
autocmd VimEnter * NERDTree " As soon as vim opens, NERDTree command is executed
nnoremap <leader>N :NERDTreeToggle<CR> 
nnoremap <leader>F :NERDTreeFocus<CR>

" ctags setting
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
" show list of candidates only if there is more than two candidates 
nnoremap <C-]> g<C-]>

" indent setting
set autoindent " keep indent before the line
set smartindent " insert indent properly

" make it possible to copy texts to clipboard wtih vim
set clipboard=unnamedplus "TODO: This doesn't work. no idea why not.

" This is a setting to use gruvbox. Modified 2018.8.11
syntax enable
set background=dark
colorscheme gruvbox
set t_Co=256

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

filetype plugin indent on

" enable deoplete 
let g:deoplete#enable_at_startup = 1 

" {{
" vim-airline/vim-airline setting
" モードの表示名を定義(デフォルトだと長くて横幅を圧迫するので略称にしている)
" TODO: なぜかエラーが起きるのであとで解明する
" let g:airline_mode_map = {
"  \ '__' : '-',
"  \ 'n'  : 'N',
"  \ 'i'  : 'I',
"  \ 'R'  : 'R',
"  \ 'c'  : 'C',
"  \ 'v'  : 'V',
"  \ 'V'  : 'V',
"  \ '' : 'V',
"  \ 's'  : 'S',
"  \ 'S'  : 'S',
"  \ '' : 'S',
"  \ }

" パワーラインでかっこよく
let g:airline_powerline_fonts = 1

" カラーテーマ指定してかっこよく
let g:airline_theme = 'gruvbox'

" タブバーをかっこよく
let g:airline#extensions#tabline#enabled = 1

" 選択行列の表示をカスタム(デフォルトだと長くて横幅を圧迫するので最小限に)
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" TODO:extension機能なのであとで
" virtulenvを認識しているか確認用に、現在activateされているvirtualenvを表示(vim-virtualenvの拡張)
" let g:airline#extensions#virtualenv#enabled = 1

" gitのHEADから変更した行の+-を非表示(vim-gitgutterの拡張)
" let g:airline#extensions#hunks#enabled = 0

" Lintツールによるエラー、警告を表示(ALEの拡張)
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#ale#error_symbol = 'E:'
" let g:airline#extensions#ale#warning_symbol = 'W:'
" }}

" to make backspace work correctly
set backspace=2

" disabled jedi-vim auto completion
let g:jedi#completions_enabled = 0

" quickrun setting
noremap <leader>q :QuickRun<CR>
