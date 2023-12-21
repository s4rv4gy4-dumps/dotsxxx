#!/bin/zsh

() {
  local file=
  for file in $ZDOTDIR/functions/*; do
    . $file
  done
} "$@"
