function new() {
	NAME=$(basename $1)
	tmux new-session -d -s $NAME -c $1
	tmux switch-client -t $NAME
}

_new() {
	local -a arguments
	arguments=('1:directory:_path_files -/')
	_arguments $arguments
}

compdef _new new

function dev() {
	PROJECT=$(find $PROJECTS -mindepth 1 -maxdepth 1 -type d | fzf --height 30% --reverse)
	[ -z "$PROJECT" ] || new $PROJECT
}

compdef {} dev
