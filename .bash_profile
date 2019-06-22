export HH_CONFIG=hicolor         # get more colors
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_GITHUB_API=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
export PERL_LOCAL_LIB_ROOT="$HOME/.perl5"
export PERL5LIB="$PERL_LOCAL_LIB_ROOT/lib/perl5"
export PERL_MB_OPT="--install_base \"$PERL_LOCAL_LIB_ROOT\""
export PERL_MM_OPT="INSTALL_BASE=$PERL_LOCAL_LIB_ROOT"
export PATH="$PERL_LOCAL_LIB_ROOT/bin:$PATH";
export PATH="$HOME/.bin:$PATH"

source /usr/local/etc/bash_completion.d/pass
source /usr/local/etc/bash_completion.d/git-completion.bash
source $HOME/.fzf.bash

alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias mutt='/usr/local/bin/neomutt'

shopt -s histappend              # append new history items to .bash_history
set -o vi

# hstr
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "hh -- \C-j"'; fi

PS1="\t\[$(tput sgr0)\] \[\033[0;32m\]\u@\h \[\e[1;33m\]\w\[\033[1;31m\]\$(git branch 2>/dev/null \
	 | grep -e '\* ' | sed 's/^..\(.*\)/ (\1)/')\[\033[0;00m\]\n \$ "
