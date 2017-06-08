#!/usr/bin/env bash

# If possible, add tab completion
AUTOCOMPLETE="$(brew --prefix)/etc/bash_completion"

[ -f "${AUTOCOMPLETE}" ] && . "${AUTOCOMPLETE}"
