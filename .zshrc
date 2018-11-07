# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/leon/.oh-my-zsh
export TERM="xterm-256color"

# select zsh theme from oh-my-zsh
ZSH_THEME="agnoster"

# plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# shorten prompt
prompt_dir() {
    prompt_segment blue black "%-53<...<%3~%<<"
}

# remove user@host
prompt_context(){}

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
