#list
alias ll='ls -lh'
alias la='ls -lah'

#network
alias ip='ifconfig | grep inet | grep -v "inet6\|inet 127.0.0.1" | awk "{print \$2}"'
