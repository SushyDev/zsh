# Run this function to add additional completions to .compdump

autoload -Uz compinit
[ ! "$(find $DOTFILES/zsh/.zcompdump -mtime +1)" ] || compinit
compinit -C

fpath+=($ZSH_CUSTOM/completions $fpath)

[ -d "$HOME/.config/completions" ] && fpath+=("$HOME/.config/completions")
