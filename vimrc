set nocompatible number autowrite autowriteall

" don't split above or left
set splitright splitbelow

" make arrow/h,l keys go on next/prev lines
set whichwrap+=<,>,[,],h,l

" Indentation; default 4; ftplugin override this, see after/ftplugin
set autoindent smartindent smarttab shiftwidth=4 softtabstop=4 tabstop=4 expandtab

" waste management
set undofile undolevels=1000 udir=~/.vim/vimundo
set dir=~/.vim/vimswapfiles//

" mappings
let mapleader = ","

nnoremap ; :
vnoremap ; :

nnoremap / /\v
vnoremap / /\v

inoremap <silent> <esc><esc> <esc>:q<cr>
nnoremap <silent> <esc><esc> :q<cr>
nnoremap <silent> s :up<cr>

nnoremap <leader>v :vsplit ~/.vim/vimrc<cr>

nnoremap <silent> <space> :set hlsearch!<cr>


" I use vim-plug for plugin management
call plug#begin('~/.vim/plugs')

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets', {'frozen': 1}

call plug#end()

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
