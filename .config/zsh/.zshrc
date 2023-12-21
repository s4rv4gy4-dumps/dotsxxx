#!/bin/zsh

() {

  local gitdls
  gitdls=~/git/dls

  local gitwork
  gitwork=~/git/sarvalabs

  local gitme
  gitme=~/git/s4rv4gy4

  local file=
  for file in $ZDOTDIR/rc.d/<->-*.zsh(n); do
    . $file
  done

} "$@"
