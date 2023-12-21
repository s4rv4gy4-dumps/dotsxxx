#!/bin/zsh

j() {
  z "$@" ; echo ":: in $(pwd) 🍻" ;
}

ll() {
  ls -la "$@" ; echo ":: in $(pwd) 🥂" ;
}

slf() {
  stylua --allow-hidden --color auto --glob **/**.lua \
    --no-editorconfig --num-threads 25 --call-parentheses Always \
    --collapse-simple-statement Never --column-width 100 \
    --indent-type Spaces --indent-width 2 --line-endings Unix \
    --quote-style AutoPreferDouble --verify --verbose -- .
}
