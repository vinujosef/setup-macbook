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
  lol
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

alias k=kubectl
alias l='exa -la'
alias ll='exa -lh --git'
alias ls=exa
alias lt='exa -lT --git'
alias cat='bat --paging=never --style=plain'

# NAVIGATION - ALIAS
# ------------------
alias workspace="cd ~/Workspace"
alias gofore="cd ~/Gofore"
alias vallox="cd ~/Gofore/Vallox2.0"

# GIT - ALIAS FUNCTIONS
# --------------------

# add, message, commit to master
function git-amc {
  git add .
  git commit -m "$1"
  git push origin master
}

# HELPER COMMANDS - ALIAS
# -----------------------

# Vallox project - HomeUI
alias clean-vallox="rm -rf dist"
alias clean-build-vallox="clean-vallox && gulp dist --brand Vallox"
alias clean-build-airflow="clean-vallox && gulp dist --brand Airflow"
alias clean-build-helios="clean-vallox && gulp dist --brand Helios"
alias clean-build-run-vallox="clean-build-vallox && gulp server"
alias clean-build-run-airflow="clean-build-airflow && gulp server"
alias clean-build-run-helios="clean-build-helios && gulp helios-server"

# Vallox project - CloudUI
alias delete-docker="delete_docker.sh"
alias build-cloudui="./build-docker.sh"
alias clean-build-cloudui="docker-container-image-volume && build-cloudui"

# Vallox project - Kubernetes & Stern
alias k-all-pods="kubectl get pods -A"
alias k-vallox-dev="kubectl config use-context vallox-dev"
alias k-vallox-prod="kubectl config use-context vallox-prod"
alias dev-vallox-all-logs="stern app -n dev --since 1s"
alias dev-vallox-error-logs="stern app -n dev --since 1s | GREP_COLOR='1;24' grep --color=always 'error'"
alias dev-vallox-info-logs="stern app -n dev --since 1s | GREP_COLOR='1;32' grep --color=always 'info'"
alias dev-mongo-port-forward="kubectl port-forward -n dev service/cloudui-dev-mongodb 28105:27017"


export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
alias python=/usr/local/bin/python3.9

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vinu.joseph/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vinu.joseph/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vinu.joseph/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vinu.joseph/google-cloud-sdk/completion.zsh.inc'; fi
