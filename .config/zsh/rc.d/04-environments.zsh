#!/bin/zsh

export EDITOR="vim"
export GPG_TTY="$(tty)"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM="xterm-256color"
export LC_CTYPE="en_US.UTF-8"
export LSCOLORS="Gxfxcxdxbxegedabagacad"

export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"
export GOROOT="$HOME/.goroot"
export GOPATH="$HOME/.gopath"

PATH="${PATH:+${PATH}:}$HOME/.local/bin"
PATH="${PATH:+${PATH}:}$GOPATH/bin"
PATH="${PATH:+${PATH}:}$GOROOT/bin"
PATH="${PATH:+${PATH}:}$CARGO_HOME/bin"
