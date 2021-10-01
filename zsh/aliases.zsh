if type exa &>/dev/null; then
  alias ls='exa'
  alias lst='exa -alT'         						 # show hidden files
fi
if type trash &>/dev/null; then
  alias rm=trash
fi
alias cdg='cd_to_git_root'
alias la='ls -al' # all files, long listing.   regardless of exa or not
alias gitdelmerged='git branch --merged | egrep -v "(^\*|main|master|develop|dev)" | xargs git branch -d'
alias dco='docker-compose'
alias sz='source ~/.zshrc'
alias pes='pipenv shell'
alias path='tr ":" "\n" <<< "$PATH"'
alias v="$EDITOR ."
alias bb='brazil-build'
alias bbr='brazil-build release'
alias bbg='brazil-build generate'
alias bbst='brazil-build scala-test'
alias bws='brazil workspace'
alias bre='brazil-runtime-exec'
alias mce-attach-cr='~/brazil-workplace/MCEOpsTools/src/MCEOpsTools/bin/attach-cr-to-sim'
alias mce-cr='~/brazil-workplace/MCEOpsTools/src/MCEOpsTools/bin/mce-cr -o'
alias cdm='cd `ls -d /Volumes/workplace/brazil-workplace/MCE/src/* | fzf`'
alias beep="osascript -e 'beep 5'"                                      # make a beepy noise
alias h='fzf_history'
alias grim='git rebase -i main'

# this requires brew and brew installed ctags
if type brew &>/dev/null; then
  if brew ls --versions ctags > /dev/null; then
    alias ctags="`brew --prefix`/bin/ctags"
  fi
fi
