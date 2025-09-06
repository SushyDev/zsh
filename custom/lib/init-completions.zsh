# Run this function to add additional completions to .compdump

autoload -Uz compinit

if [ -f "$ZDOTDIR/.zcompdump" ]; then
	[ ! "$(find $ZDOTDIR/.zcompdump -mtime +1)" ] || compinit
fi

compinit -C

fpath+=($ZSH_CUSTOM/completions $fpath)

[ -d "$HOME/.config/completions" ] && fpath+=("$HOME/.config/completions")
