# Aliases
alias cp='cp -v'
alias dh='dirs -v'
alias ll='ls -alFh'
alias wow='git status'
alias mkdir='mkdir -p'
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias cljsbuild="lein trampoline cljsbuild $@"
alias flush-bluetooth="sudo defaults write /Library/Preferences/com.apple.Bluetooth CoreBluetoothCache -dict; sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist; sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist; sudo rm /Library/Preferences/com.apple.Bluetooth.plist; rm ~/Library/Preferences/ByHost/com.apple.Bluetooth.*.plist"
alias flush-dns="sudo discoveryutil mdnsflushcache; sudo discoveryutil udnsflushcaches;"
alias fuck='$(thefuck $(fc -ln -1))'
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias start-elasticsearch="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"
alias start-mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start-server="python -m SimpleHTTPServer 8000"