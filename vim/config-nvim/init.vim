set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.vimrc

luafile ~/.config/nvim/lua/solargraph-lsp.lua



