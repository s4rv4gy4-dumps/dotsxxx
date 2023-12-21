#!/bin/zsh

export -U PATH path FPATH fpath MANPATH manpath
export -UT INFOPATH infopath

fpath=(
  ~/.local/share/zsh/site-functions
  $fpath
)

autoload -Uz compinit && compinit -d ~/.local/share/zsh/zcompdump

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
