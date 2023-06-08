skip_global_compinit=1

export ZSH="${HOME}/.oh-my-zsh"

# Locale
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

export DOT=$HOME/.dotfiles
export N_PREFIX=$HOME/.n

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

export ANSIBLE_NOCOWS=1

# Stop using less for awscli output
export AWS_PAGER=""

# Ensure serverless looks for profiles from ~/.aws/config and not ~/.aws/credentials
export AWS_SDK_LOAD_CONFIG=true

# NPM settings, because I'm stupid and pushed scope tokens to source control 🙈
export NPM_CONFIG_SAVE=true
export NPM_CONFIG_SAVE_EXACT=true
export NPM_CONFIG_ACCESS=public
export NPM_CONFIG_GIT_TAG_VERSION=false
