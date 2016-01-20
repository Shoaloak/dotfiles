#
# ~/.bash_aliases
#

# File stuff
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# Colors
alias grep='grep --color=auto'
alias ls='ls -h --color=auto'

# Ls family
alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'

# Pretty print 
alias path='echo -e ${PATH//:/\\n}'

# Random
alias df='df -Th'

alias myip="curl http://ipecho.net/plain; echo"
