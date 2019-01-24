#!/usr/bin/env bash

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

DEFAULT="\033[39m"
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[97m"
RESET="\033[0m"

LSCOLORS=GxFxCxDxBxegedabagaced
export CLICOLOR=1
export LSCOLORS

function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1) != *"working tree clean"* ]] && echo -e "${YELLOW}\xe2\x98\x85"
}

function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

export PS1="\[${MAGENTA}\][\w]\[${DEFAULT}\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[${BLUE}\]\$(parse_git_branch)\[${DEFAULT}\]\nλ \[$RESET\]"
export PS2="\[$YELLOW\]→ \[$RESET\]"
