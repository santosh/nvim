setlocal ts=2 sts=2 sw=2  wrap

inoremap <buffer> <F5> <esc>:!firefox 2> /dev/null %<cr> 
nnoremap <buffer> <F5> :!firefox 2> /dev/null %<cr>
