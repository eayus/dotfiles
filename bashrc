#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/ellis/.scripts/bin

RESET="\[$(tput sgr0)\]"
COL1="\[$(tput setaf 173)\]"
COL2="\[$(tput setaf 186)\]" 
COL3="\[$(tput setaf 161)\]"

alias ls='ls --color=auto'
alias vim=nvim
alias pacupg='pacaur -Syu'

PS1="${COL3} >${COL2}>${COL1}>${RESET} "
