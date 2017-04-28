# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# aliases
alias ll="ls -lF --color"
alias ls="ls -F --color"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# history
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=100000
export HISTCONTROL=ignoreboth

export LANG=ja_JP.UTF-8

# node
if [ -f $HOME/.nodebrew/current/bin/nodebrew ];
  then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
    nodebrew use latest
fi
