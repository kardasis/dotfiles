alias cdg='cd_to_git_root'
alias wss='workspace_status'
alias ls='ls -Gh'
alias lx='ls -lxB'        						 # sort by extension
alias ll='ls -l'
alias la='ls -Al'         						 # show hidden files
alias gitdelmerged='git branch --merged | egrep -v "(^\*|$git_main_branch)|dev)" | xargs git branch -d'
alias dco='docker-compose'
alias sz='source ~/.zshrc'
alias rm=trash
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
alias grid='git rebase -i develop'

# this requires brew and brew installed ctags
if type brew &>/dev/null; then
  if brew ls --versions ctags > /dev/null; then
    alias ctags="`brew --prefix`/bin/ctags"
  fi
fi
