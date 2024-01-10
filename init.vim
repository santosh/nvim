" line numbers
set number

" auto-save when exiting (not need to :wq<cr>, just :q<cr>)
set autowrite autowriteall

" no special buffer for vim, use system cliboard
set clipboard=unnamed

" let's enforce mouse on the name of tmux
set mouse=a

" don't split above or left
set splitright splitbelow

" make arrow/h,l keys go on next/prev lines
set whichwrap+=<,>,[,],h,l

" Indentation; default 4; ftplugin override this, see after/ftplugin
set smartindent shiftwidth=4 softtabstop=4 tabstop=4 expandtab

" line offset before window start to scroll
set scrolloff=15 

" enables paste mode (while in insert mode) which prevents hindering with autoindent
set pastetoggle=<F7>

" undofile enables undo over sessions
set undofile undolevels=1000 udir=~/.config/nvim/temp/undo

" swap files keeps unsaved buffer data
set dir=~/.config/nvim/temp/backup//

" code folding
set foldmethod=syntax foldnestmax=2 nofoldenable foldlevel=2

" one of the statusline I liked on the internet
set laststatus=2 stl=%a\ %<%F\ %(%h%m%r%y%)\[%{&ff}\]\[buf:%n\]\ %=\ \ %(%b%)\ \|\ %(%c%V\ %l/%L\ %)%P

set guicursor=n-v-c-i:block

" KEY MAPPINGS

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

" exit with double escase (tip: swap Escape and Caps Lock at system level)
inoremap <silent> <esc><esc> <esc>:q<cr>
nnoremap <silent> <esc><esc> :q<cr>

" s for save, isn't that more natural
nnoremap <silent> s :up<cr>

" first <Home> will go to first non whitespace character, second to first character
nnoremap <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0' : '^')
imap <Home> <C-o><Home>

" convenient way to edit config files
nnoremap <leader>v :vsplit ~/.config/nvim/init.vom<cr>

" enable/disable search highlight
nnoremap <silent> <space> :set hlsearch!<cr>

" comment leader is defined in each ftplugin
noremap <silent> <leader>c :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>c :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" I use vim-plug for plugin management
call plug#begin('~/.config/nvim/plugs/')

" Try to keep minimal
Plug 'SirVer/ultisnips'
Plug 'yegappan/mru'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets', {'frozen': 1}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
call plug#end()

" yegappan/mru config
let MRU_File = "~/.config/nvim/.mru_files"
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

" nerdtree config
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" vim-go configs
let g:go_null_module_warning = 0  " disables gopls won't work outside GOPATH warning
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl

" emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<Tab>'

colorscheme gruvbox

