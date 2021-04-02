# Path to your oh-my-zsh installation.
export ZSH=/home/leon/.oh-my-zsh
export TERM="xterm-256color"

# select zsh theme from oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# shorten prompt
prompt_dir() {
    prompt_segment blue black "%-53<...<%3~%<<"
}

# remove user@host
prompt_context(){}

export PATH=/home/leon/.local/bin:$PATH

alias vim="nvim"
alias chrome="chromium"

alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitd="git diff"

eval $(thefuck --alias)
