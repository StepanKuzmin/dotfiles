HOME_PATH=~
SUBLIME_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Set up zsh
ln -s `pwd`/.zshrc $HOME_PATH
ln -s `pwd`/.zshenv $HOME_PATH
ln -s `pwd`/.zprofile $HOME_PATH

# Set up tmux
ln -s `pwd`/.tmux.conf $HOME_PATH

# Set up Sublime 3
ln -s `pwd`/Preferences.sublime-settings $SUBLIME_PATH
ln -s `pwd`/SublimeREPL.sublime-settings $SUBLIME_PATH

# Set up OS X

# Allowing text selection in Quick Look/Preview in Finder by default
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate
defaults write com.apple.dock tilesize -int 36