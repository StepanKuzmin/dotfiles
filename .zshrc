# ZSH
autoload run-help
HELPDIR=/usr/local/share/
HELPDIR=/usr/local/share/zsh/helpfiles

# Set Emacs keydindings
set -o emacs

DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

autoload -U compinit promptinit colors zsh-mime-setup
compinit
promptinit
colors
zsh-mime-setup

# Open a new tab in the same directory
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# list of completers to use
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate

# Fallback to built in ls colors
zstyle ':completion:*' list-colors ''

# SSH Host Completion 
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Autocomplete for kill\killall
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:processes' command 'ps -au$USER'

# autocompletion of command line switches for aliases
setopt completealiases

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Zsh theme
prompt walters

# Correct
setopt CORRECT

HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE=~/.history
setopt APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS

# To retrieve the history file everytime history is called upon
setopt share_history

# To save every command before it is executed
setopt inc_append_history

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# Avoid beeping
setopt nobeep 

# Enable Generic Colouriser
source "`brew --prefix grc`/etc/grc.bashrc"

fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/share/zsh/site-functions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh

p() { 
  cd ~/Documents/projects/$*
}

_projects_cpl() {
  reply=($(ls ~/Documents/projects))
}

compctl -K _projects_cpl p
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
