" File: plugins.vim
" Author: Ari Kardasis
" Description: Plugin realated settings 

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'vim-scripts/ScrollColors'
Plugin 'epilande/vim-react-snippets'
Plugin 'tpope/vim-dadbod'
Plugin 'junegunn/goyo.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'skbolton/embark'
Plugin 'tmhedberg/SimpylFold'
Plugin 'gregsexton/MatchTag'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
Plugin 'honza/vim-snippets'
Plugin 'prettier/vim-prettier'

" filetype stuff
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'hdima/python-syntax'
Plugin 'posva/vim-vue'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required


" setup and config for plugins
set rtp+=/usr/local/opt/fzf

let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver'
      \ ]

let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_browser = 'Google Chrome'
let vim_markdown_preview_hotkey='<C-m>'

" coc-snipets {{{
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" }}}

" vim-go {{{
" let g:go_def_mode='gopls'
" let g:go_def_mod_mode='godef'
" }}}
