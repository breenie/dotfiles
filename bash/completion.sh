#!/usr/bin/env bash

# Any errors caused by sed or complete options are probably the wrong shell.
# sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# chsh -s /usr/local/bin/bash

# If possible, add tab completion
AUTOCOMPLETE="$(brew --prefix)/share/bash-completion/bash_completion"

if [ -f "${AUTOCOMPLETE}" ]; then
  . "${AUTOCOMPLETE}"
fi
