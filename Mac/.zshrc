# If you come from bash you might have to change your $PATH.
# export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/igori/.oh-my-zsh

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

################################################################
# Theme without Antigen, if needed
################################################################
# ZSH_THEME="agnoster"
################################################################


################################################################
# Power Level 9k Theme configuration
################################################################
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time)
export POWERLEVEL9K_MODE='nerdfont-complete'
################################################################


################################################################
# History
################################################################
# Store history in given file
export HISTFILE=~/.zsh_history
# Max number of commands per session
export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
# Switch on history
setopt APPEND_HISTORY
# Remove repeated commands, spaces, etc.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
################################################################


################################################################
# Dev config
################################################################
export ARTIFACTORY_CONTEXT_URL=<changeme>
export ARTIFACTORY_DOCKER_URL=<changeme>
export ARTIFACTORY_USERNAME=<changeme>
export ARTIFACTORY_PASSWORD=<changeme>

export SONAR_TOKEN=<changeme>

# Java and jenv
# export PATH="$HOME/.jenv/bin:$PATH" - not needed when installed through brewß
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
# export JAVA_HOME="$(jenv prefix)"

# Python and pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Golang
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on

# Android SDK
export ANDROID_SDK_ROOT="/Users/igori/Library/Android/sdk"
export ANDROID_HOME="/Users/igori/Library/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools:$PATH"

# Ruby env
eval "$(rbenv init -)"
################################################################


################################################################
# Antigen
################################################################
# source $ZSH/oh-my-zsh.sh
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle jsontools
antigen bundle command-not-found
antigen bundle golang
antigen bundle npm
antigen bundle pip
antigen bundle wd
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle greymd/docker-zsh-completion
# Fish-like auto suggestions
antigen bundle zsh-users/zsh-autosuggestions
# Extra zsh completions
antigen bundle zsh-users/zsh-completions
# For AWS CLI
antigen bundle aws

# Load the theme - hangs the source
# antigen theme dpoggi
# antigen theme agnoster
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done
antigen apply
################################################################


################################################################
# Custom PATH entries
################################################################
export PATH="$PATH:$HOME/.da/bin"
################################################################


################################################################
# Custom config
################################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/igori/.travis/travis.sh ] && source /Users/igori/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh