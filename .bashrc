#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source bash colors
source ~/.bash_colors

# User specific aliases
alias ls='ls -h --color=auto'
alias ll='ls -latr'

PS1="\[${Green}\]\u\[${Color_Off}\] \[${Blue}\]\w\[${Color_Off}\] \[${Green}\]\\$ \[${Color_Off}\]"
