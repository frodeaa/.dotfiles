export PATH=/usr/local/bin:$PATH

source /usr/local/etc/bash_completion.d/pass
source /usr/local/etc/bash_completion.d/git-completion.bash

alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
