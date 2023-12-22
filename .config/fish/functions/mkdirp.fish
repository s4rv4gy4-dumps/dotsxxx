#!/usr/bin/env fish

function mkdirp
  mkdir -p $argv
  and cd $argv
end
