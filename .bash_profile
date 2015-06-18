#paths
export PATH=$PATH:~/packer
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:"/opt/local/bin:/opt/local/sbin"

#git prompt
source ~/.git_prompt.sh

#terminal appearence
export PS1='\[\033[01;32m\]\h\[\033[01;34m\]:\w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\]' 
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$(__git_ps1 " (%s)")\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


#ruby-on-rail requirements
#export PATH=$PATH:$HOME/.rbenv
#eval "$(rbenv init -)"

#use alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# use additional file for functions
if [ -f ~/.bash_functions ]; then
   . ~/.bash_functions
fi

# Function - Make all scripts executable - ex
function ex() {
   sudo chmod +x ~/github/scripts/*
}

# Function - xtract compressed files - x
function x() {
if [ -f $1 ] ; then
    case $1 in
        *.tar.bz2)   tar xjf $1 ;;
        *.tar.gz)    tar xzf $1 ;;
        *.bz2)       bunzip2 $1 ;;
        *.gz)        gunzip $1  ;;
        *.tar)       tar xf $1  ;;
        *.tbz2)      tar xjf $1 ;;
        *.tgz)       tar xzf $1 ;;
        *.zip)       unzip $1   ;;
        *.Z)         uncompress $1  ;;
        *)           echo "extract() Unable to work out what to do with '$1'" ;;
     esac
else
    echo "'$1' is not a valid file!"
fi
}

# Function - Make backup of file - bak
function bak(){
   cp $1 $1.bak
}


# ruby-on-rails requirements
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
