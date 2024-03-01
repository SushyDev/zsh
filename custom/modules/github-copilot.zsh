env +node@20

[ ! "$(command -v github-copilot-cli)" ] && return 

_evalcache github-copilot-cli alias -- "$0"
