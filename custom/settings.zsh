export EDITOR=nvim

alias vim="nvim"
alias reload="source $ZDOTDIR/.zshrc"

if [[ "$(uname)" == "Darwin" ]]; then
	alias x86="arch -x86_64 zsh"
fi

if [[ "$(uname)" == "Linux" ]]; then
	bindkey '^[[1;5D' backward-word
	bindkey '^[[1;5C' forward-word

	alias pbcopy='wl-copy'
	alias pbpaste='wl-paste'

	alias open='xdg-open'
fi
