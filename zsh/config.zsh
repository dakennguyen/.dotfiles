export TERM=xterm-256color

[ -f ~/.asdf/plugins/golang/set-env.bash ] && source ~/.asdf/plugins/golang/set-env.bash

set -o vi

export PROJECT_PATHS_STR="${(j.:.)PROJECT_PATHS}"

DEFAULT_USER=$USER
[ -n "$GOBIN" ] && [ -d "$GOBIN" ] && PATH="$GOBIN:$PATH"
[ -n "$GOPATH" ] && [ -d "$GOPATH/bin" ] && PATH="$GOPATH/bin:$PATH"
export PATH=~/.local/bin:~/.dotfiles/bin:$PATH
export CLICOLOR=1
export CLOUD=$HOME/Documents
export GPG_TTY=$TTY

#---------------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------------
alias v="source ~/.zshenv && \$EDITOR"
alias cf="cd ~/.dotfiles && v"
alias cfn="cd ~/.config/nvim && v"
alias note="nvim '$CLOUD/Notes'"
alias c="clear"
alias q="exit"
alias s="source ~/.zshenv && source ~/.zshrc"

[ -f ~/.dotfiles/zsh/nnn.zsh ] && source ~/.dotfiles/zsh/nnn.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
