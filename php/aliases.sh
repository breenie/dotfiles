#!/bin/sh

# TODO this needs some work to get xdebug to play nice with php unit etc
alias php='php -dzend_extension="/usr/local/opt/php56-xdebug/xdebug.so"'
# alias composer='$(which php) $(which composer)'
# alias phpunit='php $(which phpunit)'
