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

" move to next uppercase character
nnoremap <c-k> :<c-u>call search('[A-Z_]')<cr>
" }}}

" Overriding existing commands {{{
" Paste over visual selection without losing register contents
vnoremap p "_dp

" Move search to center of window
nnoremap n nzzzv
nnoremap N Nzzzv
" }}}
"
" Misc {{{
" buffer search
nnoremap / /\v\c
" cancel search
nnoremap <leader>sn :noh<cr>
" }}}

" quickfix {{{ <leader>q-
nnoremap <leader>co :vert copen<cr> :vertical resize 80<cr>
nnoremap <leader>cc :cclose<cr>
nnoremap <leader>cf :cfirst<cr>
nnoremap <leader>cl :clast<cr>
nnoremap <leader>cj :cnext<cr>
nnoremap <leader>ck :cprevious<cr>
" }}}

" Formatting {{{ <leader>f-
" indent file
noremap <leader>fi gg=G<cr>

" format json
nnoremap <leader>fj :%!jq '.'<cr>
vnoremap <leader>fj :!jq '.'<cr>

nnoremap <leader>fp :Prettier<cr>
" }}}

" File Navigation {{{ <leader>e-
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
" assumes colorscheme is in a nicely named file
nnoremap <leader>ec :execute "vsplit $DOTFILES/vim/colors/".g:colors_name.".vim"<cr>
" open today's daily in a split
nnoremap <leader>ey :call GoToDaily()<cr>
" open plugins file
nnoremap <leader>ep :vsplit $DOTFILES/vim/helpers/plugins.vim<cr>

nnoremap <leader>ee :NERDTree<cr>
nnoremap <leader>eb :NERDTreeFind<cr>
" }}}

" project search {{{ <leader>s-
nnoremap <leader>sg :Ag<space>
nnoremap <leader>sfg :GGrep<space>
nnoremap <leader>sfs :SSGGrep<cr>
nnoremap <leader>ss :grep! "\b<C-R><C-W>\b"<CR>:vert copen<CR> :vertical resize 80<CR>

" }}}
"

" Running things {{{ <leader>r
" reload vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>

" filetype specific 'run' commands
" }}}

" Git {{{ <leader>g-
" vim-fugitive commands
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gc :Git commit<cr>
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

" Paste line vs character wise
nmap <Leader>Pl :call Paste(v:register, "l", "P")<CR>
nmap <Leader>pl :call Paste(v:register, "l", "p")<CR>
nmap <Leader>Pc :call Paste(v:register, "v", "P")<CR>
nmap <Leader>pc :call Paste(v:register, "v", "p")<CR>
" }}}

