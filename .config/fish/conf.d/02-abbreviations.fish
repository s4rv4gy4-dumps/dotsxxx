#!/usr/bin/env fish

set -q _init_abbr; and return

abbr -a -- zz exit

set -g _init_abbr true
