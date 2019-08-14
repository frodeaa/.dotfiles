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
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

source /usr/local/etc/bash_completion.d/pass
source /usr/local/etc/bash_completion.d/pass-otp
source /usr/local/etc/bash_completion.d/pass-oauth2
source /usr/local/etc/bash_completion.d/git-completion.bash
source $HOME/.fzf.bash

alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lb='vim ~/Documents/logbook/$(date "+%Y-%m-%d").md'
alias ll='ls -al'
alias ls='gls --color=auto'
alias mutt='/usr/local/bin/neomutt'

shopt -s histappend              # append new history items to .bash_history
set -o vi

# hstr
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "hh -- \C-j"'; fi

c_blue='\e[0;34m'
c_gray='\e[01;30m'
c_cyan='\e[0;36m'
c_reset='\e[0m'
PS1="\t\[${c_blue}$(tput sgr0)${c_gray}\] \[${c_blue}\u@\h \[${c_gray}\]\w\[${c_cyan}\]\$(git branch 2>/dev/null \
	 | grep -e '\* ' | sed 's/^..\(.*\)/ (\1)/')\[${c_reset}\]\n \$ "

test -r "~/.dir_colors" && eval $(gdircolors ~/.dir_colors)

gpg_reset() {
    gpgconf --kill gpg-agent
    gpg-connect-agent updatestartuptty /bye >/dev/null
}
