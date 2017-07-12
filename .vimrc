set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Git plugin
Plugin 'tpope/vim-fugitive'
" Python indentation plugin
Plugin 'nvie/vim-flake8'
Plugin 'godlygeek/tabular'
" Markdown plugin
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

let g:vim_markdown_folding_disabled = 1
