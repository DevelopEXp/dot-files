if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/bundle'))

" Let Dein manage itself
" Required:
call dein#add('Shougo/dein.vim')


" --------------------------------------------------
" General
" --------------------------------------------------

" Enables Git features directly in Vim
"call dein#add("tpope/vim-fugitive")

" --------------------------------------------------


" Required:
call dein#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
if dein#check_install()
  call dein#install()
endif