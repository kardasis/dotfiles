nnoremap <buffer> <leader>r :call Run()<cr>
function! Run()
  :execute '!cargo run'
endfunction

set foldmethod=indent 
setlocal foldlevel=8
