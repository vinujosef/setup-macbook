# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/vinu.joseph/.oh-my-zsh

ZSH_THEME="cobalt2"

# Auto-update (in days).
export UPDATE_ZSH_DAYS=30

# don't check for new mail
MAILCHECK=0 

# Plugins (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  npm
  yarn
  pip
  docker
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

### USER CONFIGURATION ###
# ========================

## ALIAS ##
# ---------
# For a full list of active aliases, run `alias`.

alias git-s='git status'
alias git-a='git add .'
alias git-cm="git commit -m"