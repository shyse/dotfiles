# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# aliases
case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  alias ll="ls -laG"
  ;;
linux*)
  alias ls='ls --color'
  alias ll='ls -la --color'
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
  ;; 
esac

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
if [ nodebrew ];
  then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
    nodebrew use latest
fi
