" This vimscript is about the load of plugins, especially dein.vim
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein')
  " This is needed to load dein.vim
  if !has('nvim')
      call dein#add('roxma/nvim-yarp')
      call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  " End

  call dein#add('Shougo/deoplete.nvim') " For completion
  call dein#add('Shougo/denite.nvim')
  call dein#add('scrooloose/nerdtree') " File Tree
  call dein#add('vim-airline/vim-airline')
  call dein#add('davidhalter/jedi')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('w0rp/ale')
  call dein#add('thinca/vim-quickrun')
  call dein#add('Shougo/vimproc.vim')
  call dein#add('morhetz/gruvbox')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
