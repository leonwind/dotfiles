if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/leon/.oh-my-zsh
export TERM="xterm-256color"


export PATH=/home/leon/.local/bin/:$PATH

ZSH_THEME="agnoster"

plugins=(
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# shorten prompt
prompt_dir() {
    prompt_segment blue black "%-53<...<%3~%<<"
}

# remove user@host
prompt_context(){}

alias chrome="google-chrome-stable"
alias vim="nvim"

alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitd="git diff"

