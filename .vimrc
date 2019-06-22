set cursorline
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix
set hidden
set hlsearch
set incsearch
set laststatus=2
set nocompatible
set nonumber
set smartindent
set spell
set statusline=%<%F%h%m%r%h%w%y\ %=col:%c%V\ lin:%l\,%L\ %P
set ts=2 sts=2 sw=2 expandtab
set vb t_vb=
set rtp+=/usr/local/opt/fzf

let mapleader = ','

map <C-å> <C-]> """ Ctrl-] does not work with Norwegian keyboar

nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap \ :Ag<ENTER>

syntax on
