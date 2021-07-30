# dotfiles

## Some things to run on a fresh install.

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

`echo "source $DOTFILES/vim/vimrc" >> ~/.vimrc`


### Nvim
`brew install neovim`

`mkdir ~/.config`
`ln -s $DOTFILES/vim/config-nvim ~/.config/nvim`

```
cat >  ~/.config/nvim/init.vim <<- EOM
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
EOM
```

### Git
`ln -s $DOTFILES/gitconfig ~/.gitconfig # user git config`
