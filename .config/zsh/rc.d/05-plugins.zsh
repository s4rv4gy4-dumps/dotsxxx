#!/bin/zsh

local -a plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

local p=
for p in $plugins; do
  . $ZDOTDIR/plugins/$p/$p.zsh
done

zstyle ':autocomplete:*' min-delay 0.5
