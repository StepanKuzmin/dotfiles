export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/usr/lib:$PATH"
# export PATH="/usr/local/Cellar/ruby/2.0.0-p0/bin:$PATH"
export PATH="/usr/local/Cellar/ruby/2.0.0-p195/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export PATH="/opt/mapnik-osx/bin":$PATH
export PATH="/usr/local/share/npm/bin":$PATH
export PKG_CONFIG_PATH="/opt/mapnik-osx/lib/pkgconfig":$PKG_CONFIG_PATH

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Make vim the default editor
export EDITOR="mvim"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

alias tilemill="ssh -CA mapbox@new.mystand.ru -L 20009:localhost:20009 -L 20008:localhost:20008"

alias pgstart="/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="/usr/local/bin/pg_ctl -D /usr/local/var/postgres stop"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; sudo gem update'

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Enable Generic Colouriser
source "`brew --prefix grc`/etc/grc.bashrc"
