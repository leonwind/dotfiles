# Path to your oh-my-zsh installation.
export ZSH=/home/leon/.oh-my-zsh
export TERM="xterm-256color"

# select zsh theme from oh-my-zsh
ZSH_THEME=""

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt_newline='%666v'
PROMPT=" $PROMPT"

zstyle ':prompt:pure:path' color green 
zstyle ':propmpt:pure:git:branch' color yellow
zstyle ':propmpt:pure:git:dirty' color red 
zstyle ':prompt:pure:prompt:success' color yellow 
zstyle ':prompt:pure:prompt:error' color red
zstyle ':prompt:pure:git:stash' show yes

prompt pure

# plugins
plugins=(git zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

# shorten prompt
prompt_dir() {
    prompt_segment blue black "%-53<...<%3~%<<"
}

# remove user@host
prompt_context(){}

alias chrome="chromium"

alias gits="git status"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitd="git diff"

eval $(thefuck --alias)
