if status is-interactive

  # exported variables
  set -x EDITOR nvim
  set -x LANG en_US.UTF-8
  set -x LC_ALL en_US.UTF-8
  set -x TERM xterm-256color
  set -x LC_CTYPE en_US.UTF-8

  # exported path
  set -x GOROOT $HOME/.goroot
  set -x GOPATH $HOME/.gopath
  set -x CARGO_HOME $HOME/.cargo
  set -x RUSTUP_HOME $HOME/.rustup

  # universal path
  fish_add_path $GOPATH/bin
  fish_add_path $GOROOT/bin
  fish_add_path $CARGO_HOME/bin
  fish_add_path $HOME/.local/bin

end
