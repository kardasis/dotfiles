
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
Plugin 'SirVer/ultisnips'
Plugin 'epilande/vim-react-snippets'
Plugin 'tpope/vim-dadbod'
Plugin 'junegunn/goyo.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'skbolton/embark'
Plugin 'tmhedberg/SimpylFold'
Plugin 'gregsexton/MatchTag'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'

" filetype stuff
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'hdima/python-syntax'
Plugin 'posva/vim-vue'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()            " required
filetype plugin indent on    " required


" setup and config for plugins
set rtp+=/usr/local/opt/fzf
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_browser = 'Google Chrome'
let vim_markdown_preview_hotkey='<C-m>'



" Snippets {{{
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsExpandTrigger="<tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"this is a workaround for a bug that puts the snippet in the wrong place
let g:UltiSnipsSnippetDirectories = [$DOTFILES.'/vim/UltiSnips']
" }}}
