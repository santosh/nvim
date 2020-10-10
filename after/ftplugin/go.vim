inoremap <buffer> <F5> <esc>:!go run %<cr>
nnoremap <buffer> <F5> :!go run %<cr>

inoremap <buffer> <F6> <esc>:GoBuild<cr>
nnoremap <buffer> <F6> :GoBuild<cr>

nnoremap <buffer> <c-n> :cnext<cr>
nnoremap <buffer> <c-m> :cprevious<cr>

nnoremap <buffer> <leader>t :GoTest<cr>
nnoremap <buffer> <leader>c :GoCoverageToggle<cr>

let b:comment_leader = '// '

" For missing imports
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Extra syntax highlilghting; disable if vim running slow
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
