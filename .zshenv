skip_global_compinit=1

export ZSH="${HOME}/.oh-my-zsh"

# Locale
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

export DOT=$HOME/.dotfiles
export PATH="${PATH}:${DOT}/bin"

# Check required paths for brew
export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="$PATH:/usr/local/opt/ruby/bin"
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set editor
export EDITOR="vi"
export VISUAL=vim

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
# Highlight section titles in manual pages
# export LESS_TERMCAP_md="$ORANGE"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
# export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help" # Bash
export HIST_IGNORE="(ls|cd|cd -|pwd|exit|date|* --help)"

# PHP
export COMPOSER_DISABLE_XDEBUG_WARN=1
export COMPOSER_MEMORY_LIMIT=-1

# Colours in ant commands please
export ANT_ARGS="-logger org.apache.tools.ant.listener.AnsiColorLogger"

# Store vagrant boxes in home
export VAGRANT_DOTFILE_PATH=~/.vagrant
