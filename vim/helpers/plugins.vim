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
Plugin 'skbolton/embark'
Plugin 'tmhedberg/SimpylFold'
Plugin 'gregsexton/MatchTag'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'fatih/vim-go'
Plugin 'honza/vim-snippets'
Plugin 'prettier/vim-prettier'
Plugin 'tpope/rails-vim'

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

let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_browser = 'Firefox'
let vim_markdown_preview_hotkey='<C-m>'

" nerdtree {{{
:let g:NERDTreeWinSize=45
" }}}
