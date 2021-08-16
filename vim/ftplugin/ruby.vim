setlocal foldmethod=syntax
setlocal foldlevel=8

function! RubocopAutocorrect()
  execute "!rubocop -a " . bufname("%")
endfunction

nnoremap <buffer> <silent> <leader>fp :call RubocopAutocorrect()<cr>

nnoremap <buffer> <leader>rr :w<cr>:!ruby %<cr>

" navigate around related rails files {{{
nnoremap <buffer> <leader>rvm :Vmodel<cr>
nnoremap <buffer> <leader>rvf :Vfixtures<cr>
nnoremap <buffer> <leader>rvc :Vcontroller<cr>
nnoremap <buffer> <leader>rvs :Vunittest<cr>
nnoremap <buffer> <leader>rvh :Vschema<cr>

nnoremap <buffer> <leader>rhm :Smodel<cr>
nnoremap <buffer> <leader>rhf :Sfixtures<cr>
nnoremap <buffer> <leader>rhc :Scontroller<cr>
nnoremap <buffer> <leader>rhs :Sunittest<cr>
nnoremap <buffer> <leader>rhh :Sschema<cr>

nnoremap <buffer> <leader>rem :Emodel<cr>
nnoremap <buffer> <leader>ref :Efixtures<cr>
nnoremap <buffer> <leader>rec :Econtroller<cr>
nnoremap <buffer> <leader>res :Eunittest<cr>
nnoremap <buffer> <leader>reh :Eschema<cr>
" }}}
