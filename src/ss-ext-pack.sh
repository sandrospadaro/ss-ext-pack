#!/bin/bash
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias la='ls -lah'
alias ll='ls -hl'
alias ld='ls -dlh */'
alias top='htop'
alias please='sudo'
alias du='du -h'
alias df='df -h'
alias vi='vim'
alias more='less'
alias calc='bc'
alias where='find / -iname'
alias ps='ps -aux'
alias netstat='netstat -pnt'

mkcdir()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# cd(){
#        if [ $# -eq 0 ]
#        then
#                pushd ~ > /dev/null
#        else
#                if [ $# -eq 1 ]
#                then
#                        if [ $1 = '-' ]
#                        then
#                                popd > /dev/null
#                        else
#                                pushd $1 > /dev/null
#                        fi
#                else
#                        cmd="/usr/bin/cd $@"
#                        echo $cmd
#                        eval $cmd
#                fi
#        fi
#}
