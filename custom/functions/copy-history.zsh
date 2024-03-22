function ch() {
	history 1 | awk '{$1=""; print $0}' | fzf | xargs | pbcopy
}

compdef {} ch
