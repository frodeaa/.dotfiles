set cmdheight=2
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix
set hidden
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set nobackup
set nocompatible
set number
set nowritebackup
set rtp+=/usr/local/opt/fzf
set shortmess+=c
set signcolumn=yes
set statusline=%<%F%h%m%r%h%w%y\ %=col:%c%V\ lin:%l\,%L\ %P
set ts=4 sts=4 sw=4 expandtab smarttab
set updatetime=300
set vb t_vb=

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let mapleader = ','
let g:netrw_browse_split=4

map <C-å> <C-]> """ Ctrl-] does not work with Norwegian keyboar

nmap <leader>rn :call CocActionAsync('rename')
nmap <leader>f  :call CocActionAsync('formatSelected', visualmode())<CR>

inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> gi :call CocActionAsync('jumpImplementation')<CR>
nnoremap <silent> gr :call CocActionAsync('jumpReferences')<CR>
nnoremap <silent> gy :call CocActionAsync('jumpTypeDefinition')<CR>
nnoremap \ :Ag<ENTER>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup mygroup autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

filetype plugin indent on
syntax on
set background=light
colorscheme nord
