autoload run-help
HELPDIR=/usr/local/share/

# PATH
export PATH="/usr/local/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin/
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Add GHC 7.8.2 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.2.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Set Emacs keydindings
set -o emacs

# ZSH
DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

autoload -U compinit promptinit colors zsh-mime-setup
compinit
promptinit
colors
zsh-mime-setup

autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

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

# Open a new tab in the same directory
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

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
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh

# Aliases
alias cp="cp -v"
alias dh='dirs -v'
alias ll='ls -alFh'
alias wow="git status"
alias mkdir="mkdir -p"

alias start-server="python -m SimpleHTTPServer 8000"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias start-remote-tilemill="ssh -CA mapbox@new.mystand.ru -L 20009:localhost:20009 -L 20008:localhost:20008 -L 8888:localhost:8888"
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"


p() { 
  cd ~/Development/projects/$*
}
_projects_cpl() {
  reply=($(ls ~/Development/projects))
}
compctl -K _projects_cpl p

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting