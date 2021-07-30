augroup VimFtPlugin
  autocmd bufwritepost vimrc execute "source %"
  autocmd bufwritepost .vimrc execute "source %"
augroup end

nnoremap <buffer> <leader>/ I"<space><esc>
nnoremap <buffer> <leader>r :source %<cr>
setlocal foldmethod=marker
setlocal foldlevel=4

