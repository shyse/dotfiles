alias ll="ls -lF --color"
alias ls="ls -F --color"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTSIZE=100000

export LANG=ja_JP.UTF-8

nodebrew use latest 
