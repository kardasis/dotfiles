" File: plugins.vim
" Author: Ari Kardasis
" Description: Plugin realated settings

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'honza/vim-snippets'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'junegunn/fzf.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'skbolton/embark'
Plugin 'slim-template/vim-slim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'

" neovim pulgins {{{
if has('nvim')
  Plugin 'neovim/nvim-lspconfig'
endif
" }}}

call vundle#end()            " required
filetype plugin indent on    " required


" setup and config for plugins
set rtp+=/usr/local/opt/fzf

" vim-markdown {{{
let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_browser = 'Google Chrome'
let vim_markdown_preview_hotkey='<C-m>'
" }}}

" nerdtree {{{
let g:NERDTreeWinSize=45
" }}}

" airline {{{
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%3c [%4l/%L]'   " replace default position display
" }}}
