setlocal et shiftwidth=4 tabstop=4 softtabstop=4 tw=77 formatoptions-=t

let b:comment_leader = '# '

nnoremap <buffer> <F5> :!python3 %<CR>
inoremap <buffer> <F5> <esc>:!python3 %<CR>
