# Prefer US English and use UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US'

# Make vim the default editor
export EDITOR='vim'

# PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Library/Frameworks/GDAL.framework/Programs
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE='ls:cd:cd -:pwd:exit:date:* --help'

# Android

export ANDROID_HOME=`brew --prefix android-sdk`
export ANDROID_NDK_PATH=`brew --cellar android-ndk`/r10e
export JAVA_HOME=$(/usr/libexec/java_home)
export STUDIO_JDK=$JAVA_HOME

# Byobu
export BYOBU_PREFIX=$(brew --prefix)

# Load RVM into a shell session *as a function*

export NVM_DIR=/Users/stepan/.nvm
export NVM_SYMLINK_CURRENT=true
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 0.10

skip_global_compinit=1