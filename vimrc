set nocompatible number autowrite autowriteall

" search as you type
set incsearch

" don't split above or left
set splitright splitbelow

" make arrow/h,l keys go on next/prev lines
set whichwrap+=<,>,[,],h,l

" Indentation; default 4; ftplugin override this, see after/ftplugin
set autoindent smartindent smarttab shiftwidth=4 softtabstop=4 tabstop=4 expandtab scrolloff=10 pastetoggle=<F7>

" waste management
set undofile undolevels=1000 udir=~/.vim/vimundo
set dir=~/.vim/vimswapfiles//

" code folding
set foldmethod=syntax foldnestmax=2 nofoldenable foldlevel=2

set laststatus=2 stl=%a\ %<%F\ %(%h%m%r%y%)\[%{&ff}\]\[buf:%n\]\ %=\ \ %(%b%)\ \|\ %(%c%V\ %l/%L\ %)%P

" Some keybindings do similar action but are defined in their ftplugin
" don't use them globally. These include
" <F5>      : Run
" <leader>d : Document

" mappings
let mapleader = ","

nnoremap ; :
vnoremap ; :

" for sake of c-lang family
inoremap <leader>; <C-o>A;

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

" smart home key
nnoremap <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0' : '^')
imap <Home> <C-o><Home>

nnoremap <leader>v :vsplit ~/.vim/vimrc<cr>

nnoremap <silent> <space> :set hlsearch!<cr>

" comment leader is defined in each ftplugin
noremap <silent> <leader>c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>c :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" I use vim-plug for plugin management
call plug#begin('~/.vim/plugs/')

Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'yegappan/mru'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets', {'frozen': 1}
Plug 'morhetz/gruvbox'

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
call plug#end()

" Valloric/YouCompleteMe config
" prevent complete between UltiSnips <TAB>
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []


" snippet config
let snips_author = "Santosh Kumar"
let snips_email = "sntshkmr60@gmail.com"
let snips_github = "@santosh"

" yegappan/mru config
let MRU_File = "~/.vim/.mru_files"
let MRU_Window_Height = 10
let MRU_Max_Entries = 15
nnoremap <leader>m :MRU<cr>
inoremap <leader>m <esc>:MRU<cr>

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" vim-go configs
let g:go_null_module_warning = 0  " disables gopls won't work outside GOPATH warning

colorscheme gruvbox
set background=dark
