ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

DISABLE_MAGIC_FUNCTIONS=true
SHOW_AWS_PROMPT=false

plugins=(
  git 
  aws
)

PATH="/usr/local/opt/python@3.8/bin:${PATH}"
PATH="/usr/local/opt/ruby/bin:$PATH"
PATH="/opt/homebrew/sbin:${PATH}"
PATH="/opt/homebrew/bin:${PATH}"
PATH="${PATH}:${DOT}/bin"

export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

source $ZSH/oh-my-zsh.sh
source $DOT/aliases
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# When I say force, I mean force!
setopt rm_star_silent
setopt +o nomatch
