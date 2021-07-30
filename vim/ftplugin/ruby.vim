setlocal foldmethod=syntax
setlocal foldlevel=8

function! RubocopAutocorrect()
  execute "!rubocop -a " . bufname("%")
endfunction

nnoremap<silent> <leader>fp :call RubocopAutocorrect()<cr>
nnoremap<leader>r :w<cr>:!ruby %<cr>



