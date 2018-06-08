#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
# Customize to your needs...
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# cd "$HOME/Documents/yoti/yoti-backend/" && source "initialise.sh"

# Customize to your needs...
# PATHS

# Yarn package
export PATH="$PATH:$(yarn global bin)"

export PATH="$PATH:/Users/udokanwosu/protobuf"

# Ruby env
# eval "$(rbenv init -)"

#Python Commands
alias python=python3
alias emacs="emacs -nw"


alias vim="nvim"
alias doc="cd $HOME/Documents"
alias tut="cd $HOME/Documents/tut"
alias down="cd $HOME/Downloads/"
alias musicd="open ~/Desktop/Files/Java\ Files/DeezerDownloader.jar"

# Short hand commands
alias firstline="head -n 1"
alias wordcount="wc -w "
alias linecount="wc -l"


# Config shortcuts
alias vimrc="vim $HOME/.vimrc";
alias nvimrc="vim $HOME/.config/nvim/init.vim";
alias bashrc="vim $HOME/.bashrc && source $HOME/.bashrc";
alias zshrc="vim $HOME/.zshrc && source $HOME/.zshrc";
alias tmuxrc="vim $HOME/.tmux.conf && tmux source-file $HOME/.tmux.conf"
alias spacerc="vim $HOME/.spacemacs"
alias gitrc="vim $HOME/.gitconfig"
alias bp="bashrc"
alias vrc="vimrc"
alias mike="cd /Volumes/MichaelHD"
alias proj="cd $DROPBOX/Projects"
alias school="ssh un4@un4.host.cs.st-andrews.ac.uk"
alias sublime="open -a Sublime\ Text"
alias code="open -a /Applications/Visual\ Studio\ Code.app/"
alias renamefiles="python /Users/udokanwosu/Documents/Scripts/PythonSnippets/renamefiles.py"


# Unzipping *everything*
extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

ff() {
    rgvalid=$(command -v rg)
    [[ -z "$1" ]] && echo "Usage :: findfile <filename>" || [[ -z "$rgvalid" ]] && rg -g $1 --files || find ./ -iname $1
	# arg1=$1 find ./ -iname arg1
}

prevhist() {
    if [[ -z "$1" ]]; then
        echo "Usage: $0 <term to search>" 
    else
        rg $1 ~/bkup/.zshhist.bkup ;
    fi
}

hist() {
    if [[ -z "$1" ]]; then 
        echo "Usage: hist <value> value not provided"
    else
        howmany=50
        if [[ -n "$2" ]]; then
            howmany=$2
        fi
        history | grep $1 | tail -n $howmany

    fi
}

set -o vi
# Link to rust binaries

export PATH=$PATH:/Users/udokanwosu/.cargo/bin

# Docker Commands
alias dkrm="docker rm -v $(docker ps -aq -f status=exited)"
alias dkstop="docker stop $(docker ps -q)"
alias dkrmall="docker rm $(docker ps -aq)"

# tmux configuraton
alias tma="tmux new-session -A -s work"


# Go paths
# export GOPATH=$HOME/Documents/yoti/yoti-backend/go
# export PATH=$PATH:/usr/local/Cellar/go/1.9/bin
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Visual Studio Code
export PATH=$PATH:~/scripts/

# source "/Users/udokanwosu/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

#Nmap setting
alias nmp="/usr/local/Cellar/nmap/7.60/bin/nmap"

#Rust settings
export RUST_SRC_PATH=/usr/local/src/rust/src


# Music 
alias music="sudo docker run --device /dev/snd -it --rm --name mpsyt rothgar/mpsyt"
alias gop="cd /Users/udoka.nwosu/Documents/yoti/yoti-backend/go/src/github.com/lampkicking"
alias sand="cd /Users/udoka.nwosu/Documents/yoti/sandbox/"


export PATH=$PATH:/Users/udoka.nwosu/Documents/yoti/yoti-backend/go/src/github.com/lampkicking/core-ci

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM="xterm-256color"
