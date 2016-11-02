export ZSH=~/.oh-my-zsh
export EDITOR="vim"
ZSH_THEME="random"
plugins=(git autojump tmux zsh-syntax-highlighting history-substring-search colored-man-pages)
source $ZSH/oh-my-zsh.sh

alias pc="proxychains4"
if [ "$TMUX" = "" ]; then tmux; fi
