inoremap <buffer> <F5> <esc>:!rm %:r<cr>:!make %:r<cr>:!./%:r<cr>
nnoremap <buffer> <F5> :!rm %:r<cr>:!make %:r<cr>:!./%:r<cr>

let b:comment_leader = '// '
