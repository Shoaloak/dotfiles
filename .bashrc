#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Color definitions
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Bash options
set -o vi

PS1="\[${Green}\]\u\[${Color_Off}\] \[${Blue}\]\w\[${Color_Off}\] \[${Green}\]\\$ \[${Color_Off}\]"
