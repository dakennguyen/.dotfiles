#====> section: powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#====> section: zinit
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
  command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
  command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
    print -P "%F{33} %F{34}Installation successful.%f%b" || \
    print -P "%F{160} The clone has failed.%f%b"
fi
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

#> Oh-My-Zsh plugins & library
zinit snippet OMZL::history.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZP::git
zinit snippet OMZP::pj

#> zinit plugins
zinit light romkatv/powerlevel10k
zinit light zdharma/fast-syntax-highlighting
zinit light asdf-vm/asdf

#> initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
zinit cdreplay -q

#====> section: load config
source ~/.dotfiles/zsh/config.zsh
