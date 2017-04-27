alias ll="ls -lGF"
alias ls="ls -GF"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias history='history 1'

setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt print_eight_bit
setopt print_exit_value
setopt auto_pushd
setopt pushd_ignore_dups

autoload -Uz colors && colors
autoload -Uz compinit && compinit -u

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
PROMPT='[%n%#%m %c] '

export LANG=ja_JP.UTF-8

