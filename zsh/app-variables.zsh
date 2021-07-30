export SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk
if type "nvim" > /dev/null; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

export TERM=xterm-256color
export PGDATA=/usr/local/var/postgres

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# for cloner : https://pypi.org/project/cloner
export CLONER_PATH="$HOME/repos"
