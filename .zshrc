autoload run-help
HELPDIR=/usr/local/share/

# PATH
export PATH="/usr/local/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

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

# ZSH
autoload -U compinit promptinit colors zsh-mime-setup
compinit
promptinit
colors
zsh-mime-setup

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# autocompletion of command line switches for aliases
setopt completealiases

# Open a new tab in the same directory
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# Zsh theme
prompt walters

# Correct
setopt CORRECT

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# Make vim the default editor
export EDITOR="vim"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Enable Generic Colouriser
source "`brew --prefix grc`/etc/grc.bashrc"

# Aliases
alias wow="git status"
alias cp="cp -v"
alias mkdir="mkdir -p"

alias start-remote-tilemill="ssh -CA mapbox@new.mystand.ru -L 20009:localhost:20009 -L 20008:localhost:20008 -L 8888:localhost:8888"
alias start-server="python -m SimpleHTTPServer 8000"
alias start-pgsql="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop-pgsql="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
