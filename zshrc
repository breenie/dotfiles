ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

DISABLE_MAGIC_FUNCTIONS=true
SHOW_AWS_PROMPT=false

plugins=(
  git 
  sudo 
  aws
)

source $ZSH/oh-my-zsh.sh
source $DOT/aliases
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# When I say force, I mean force!
setopt rm_star_silent
