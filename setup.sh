# Set up Sublime
ln -s ~/Dropbox/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ~/Dropbox/dotfiles/SublimeREPL.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeREPL.sublime-settings

# Set up shell
ln -s '~/Dropbox/dotfiles/.zprofile' '~/.zprofile'
ln -s '~/Dropbox/dotfiles/.zshrc' '~/.zshrc'
ln -S '~/Dropbox/dotfiles/.zshenv' '~/.zshenv'

# Set up OS X

# Allowing text selection in Quick Look/Preview in Finder by default
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate
defaults write com.apple.dock tilesize -int 36