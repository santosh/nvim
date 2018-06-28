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

" snippet variables
let snips_author = "Santosh Kumar"
let snips_email = "sntshkmr60@gmail.com"
let snips_github = "@santosh"

" mappings
let mapleader = ","

nnoremap ; :
vnoremap ; :

nnoremap / /\v
vnoremap / /\v

" navigate beween splits with Ctrl+nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap <silent> <esc><esc> <esc>:q<cr>
nnoremap <silent> <esc><esc> :q<cr>
nnoremap <silent> s :up<cr>

nnoremap <leader>v :vsplit ~/.vim/vimrc<cr>

nnoremap <silent> <space> :set hlsearch!<cr>

" comment leader is defined in each ftplugin
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" I use vim-plug for plugin management
call plug#begin('~/.vim/plugs/')

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets', {'frozen': 1}

call plug#end()

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
