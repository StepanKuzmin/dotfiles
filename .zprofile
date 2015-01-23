# Aliases
alias cp="cp -v"
alias dh='dirs -v'
alias ll='ls -alFh'
alias wow="git status"
alias mkdir="mkdir -p"
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'

alias start-server="python -m SimpleHTTPServer 8000"
alias start-mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start-elasticsearch="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"
alias start-remote-tilemill="ssh -CA mapbox@new.mystand.ru -L 20009:localhost:20009 -L 20008:localhost:20008 -L 8888:localhost:8888"
alias start-remote-mapbox-studio="ssh -CA mapbox@10.10.8.105 -L 3000:localhost:3000 -L 3000:localhost:3000"

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias flush-dns="sudo discoveryutil mdnsflushcache; sudo discoveryutil udnsflushcaches;"