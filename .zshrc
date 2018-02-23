# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/udoka.nwosu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
autoload -U colors && colors
# PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
#


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
#

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PYTHON_CONFIGURE_OPTS="--enable-framework"

# Yarn package
export PATH="$PATH:$(yarn global bin)"


# Ruby env
# eval "$(rbenv init -)"

#Python Commands
alias python=python3


# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias vim="nvim"
alias doc="cd $HOME/Documents"
alias down="cd $HOME/Downloads/"

# Short hand commands
alias firstline="head -n 1"
alias wordcount="wc -w "
alias linecount="wc -l"


# Config shortcuts
alias vimrc="vim $HOME/.vimrc";
alias nvimrc="vim $HOME/.config/nvim/init.vim";
alias bashrc="vim $HOME/.bashrc && source $HOME/.bashrc";
alias zshrc="vim $HOME/.zshrc && source $HOME/.zshrc";
alias bp="bashrc"
alias vrc="vimrc"
alias mike="cd /Volumes/MichaelHD"
alias proj="cd $DROPBOX/Projects"
alias school="ssh un4@un4.host.cs.st-andrews.ac.uk"
alias sublime="open -a Sublime\ Text"
alias code="open -a /Applications/Visual\ Studio\ Code.app/"


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

findfile() {
	arg1=$1
	find ./ -iname arg1
}

# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"


# Docker Initialization
# eval $(docker-machine env default)



# # Docker Commands
# alias dkrm="docker rm -v $(docker ps -aq -f status=exited)"
# alias dkstop="docker stop $(docker ps -q)"
# alias dkrmall="docker rm $(docker ps -aq)"


# Go paths
export GOPATH=$HOME/Go
# export PATH=$PATH:/usr/local/Cellar/go/1.9/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Visual Studio Code
export PATH=$PATH:~/scripts/

source "/Users/udoka.nwosu/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

#Nmap setting
alias nmp="/usr/local/Cellar/nmap/7.60/bin/nmap"

#Rust settings
export RUST_SRC_PATH=/usr/local/src/rust/src


# Music 
alias music="sudo docker run --device /dev/snd -it --rm --name mpsyt rothgar/mpsyt"

set -o vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Go path
export GOPATH=$HOME/go # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# zsh completions 
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
