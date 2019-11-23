#!/bin/bash
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias la='ls -lah'
alias ll='ls -hl'
alias top='htop'
alias please='sudo'
alias du='du -h'
alias df='df -h'
alias vi='vim'
alias more='less'
alias calc='bc'
alias where='find / -iname'

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}