#!/bin/sh

# TODO this needs some work to get xdebug to play nice with php unit etc
alias php='php -dzend_extension="/usr/local/opt/php56-xdebug/xdebug.so"'
# alias composer='$(which php) $(which composer)'
# alias phpunit='php $(which phpunit)'

# export XDEBUG_CONFIG="remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0"
