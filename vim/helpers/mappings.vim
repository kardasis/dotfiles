let mapleader = " "

" Tabs and Windows  {{{
nnoremap <leader>w <c-w>
nnoremap <leader>ww <c-w>c<c-w>
nnoremap <leader>tj :tabprevious<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tJ :tabfirst<cr>
nnoremap <leader>tK :tablast<cr>
nnoremap <leader>tc :tabnew<cr>
nnoremap <leader>tn :call OpenBufferInNewTab()<cr>
" }}}

" Cursor Navigation {{{
" this is visual, select, normal and operator-pending modes
noremap H 0
noremap L $
"
" get out of mode
cnoremap jk <C-c>
inoremap jk <esc>

" buffer search
nnoremap / /\v\c

" move to next uppercase character
nnoremap <c-k> :<c-u>call search('\u')<cr>
" }}}

" quickfix {{{
nnoremap <leader>co :vert copen<cr> :vertical resize 80<cr>
nnoremap <leader>cc :cclose<cr>
nnoremap <leader>cf :cfirst<cr>
nnoremap <leader>cl :clast<cr>
nnoremap <leader>cj :cnext<cr>
nnoremap <leader>ck :cprevious<cr>
" }}}

" Formatting {{{
" indent file
noremap <leader>ai gg=G<cr>

" format json
nnoremap <leader>jq :%!jq '.'<cr>
vnoremap <leader>jq :!jq '.'<cr>

xnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f  <Plug>(coc-format-selected)

nnoremap <leader>fp :Prettier<cr>
" }}}

" File Navigation {{{
" open snippet file for current filetype
nnoremap <leader>es :CocCommand snippets.editSnippets<cr>
" open filetype for current filetype
nnoremap <leader>ef :vsplit $DOTFILES/vim/ftplugin/<C-R>=&filetype<CR>.vim<CR>
" open vimrc
nnoremap <leader>ev :vsplit $DOTFILES/vim/vimrc<cr>
" open zshrc
nnoremap <leader>ez :vsplit $DOTFILES/zsh/zshrc<cr>
" open this mapping file
nnoremap <leader>em :vsplit $DOTFILES/vim/helpers/mappings.vim<cr>
" open zsh aliases
nnoremap <leader>ea :vsplit $DOTFILES/zsh/aliases.zsh<cr>
" open tmux.config
nnoremap <leader>et :vsplit $DOTFILES/tmux/tmux.conf<cr>
" open my personal vim todo list 
nnoremap <leader>en :vsplit notes.ariignore<cr>
" open a scratch file for SQL queries (see vim/ftplugin/sql.vim)
nnoremap <leader>edb :vsplit scratch.SQL<cr>
" open a .env file
nnoremap <leader>ed :vsplit .env<cr>
" fzf file searches
nnoremap <leader>eg :GFiles --exclude-standard --cached --others<cr>
" open current colorscheme file
nnoremap <leader>ee :NERDTree<cr>
" assumes colorscheme is in a nicely named file
nnoremap <leader>ec :execute "vsplit $DOTFILES/vim/colors/".g:colors_name.".vim"<cr>
" open today's daily in a split
nnoremap <leader>ey :call GoToDaily()<cr>

" project search
nnoremap <leader>sg :GGrep<space>
nnoremap <leader>ss :SSGGrep<cr>

" reload vimrc
nnoremap <leader>vv :source $MYVIMRC<cr>
" }}}

" Git {{{
" vim-fugitive commands
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gvdiff<cr>
nnoremap <leader>gps :Gpush<cr>
nnoremap <leader>gpl :Gpull<cr>
" }}}

" Copy and Paste {{{
" yank to system clipboard
xnoremap <leader>c "+y 
nnoremap <leader>c "+y

" paste from system clipboard
nnoremap <leader>v "+p

" toggle paste mode 
nnoremap <F2> :set invpaste paste?<CR>

" copy the current file path and line number into the 'l' register
nnoremap <leader>yy :let @l=join([expand('%'),  line(".")], ':')<cr>
" }}}
