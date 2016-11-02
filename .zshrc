export ZSH=~/.oh-my-zsh
export EDITOR="vim"
ZSH_THEME="random"
plugins=(git autojump tmux zsh-syntax-highlighting history-substring-search colored-man-pages)
source $ZSH/oh-my-zsh.sh

alias vi="vim"
alias pc="proxychains4"

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [ "$TMUX" = "" ]; then tmux; fi
