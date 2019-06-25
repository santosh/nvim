setlocal ts=2 sts=2 sw=2  wrap

inoremap <buffer> <F5> <esc>:!xdg-open 2> /dev/null %<cr>
nnoremap <buffer> <F5> :!xdg-open 2> /dev/null %<cr>
