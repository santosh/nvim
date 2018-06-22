set number

set autowrite autowriteall

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

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
