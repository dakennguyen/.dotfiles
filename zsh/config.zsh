export TERM=xterm-256color

[ -f ~/.asdf/plugins/golang/set-env.bash ] && source ~/.asdf/plugins/golang/set-env.bash

set -o vi

export PROJECT_PATHS_STR="${(j.:.)PROJECT_PATHS}"

DEFAULT_USER=$USER
[ -n "$GOBIN" ] && [ -d "$GOBIN" ] && PATH="$GOBIN:$PATH"
[ -n "$GOPATH" ] && [ -d "$GOPATH/bin" ] && PATH="$GOPATH/bin:$PATH"
[ -d "${ASDF_DATA_DIR:-$HOME/.asdf}/shims" ] && PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export EDITOR="nvim"
export PATH=~/.local/bin:~/.dotfiles/bin:$PATH
export CLICOLOR=1
export CLOUD=$HOME/Documents
export GPG_TTY=$TTY

#---------------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------------
alias v="source ~/.zshenv && \$EDITOR"
alias sv="source ~/.zshenv && sudo $(command -v $EDITOR)"
alias cf="cd ~/.dotfiles && v"
alias cfn="cd ~/.config/nvim && v"
alias note="nvim '$CLOUD/Notes'"
alias c="clear"
alias q="exit"
alias s="source ~/.zshenv && source ~/.zshrc"
alias dk="docker"
alias dkc="docker compose"

[ -f ~/.dotfiles/zsh/nnn.zsh ] && source ~/.dotfiles/zsh/nnn.zsh
command -v fzf >/dev/null && source <(fzf --zsh)
