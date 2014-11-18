# Set up Sublime
ln -s "/Users/stepan/Documents/dotfiles/Preferences.sublime-settings" "/Users/stepan/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

# Allowing text selection in Quick Look/Preview in Finder by default
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate
defaults write com.apple.dock tilesize -int 36