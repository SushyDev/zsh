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
	local PROJECT

	PROJECT=$(find $PROJECTS -mindepth 1 -maxdepth 1 -type d | fzf --tmux --reverse)

	if [ "$PROJECT" ]; then
		if tmux has-session -t $(basename $PROJECT) 2>/dev/null; then
			tmux switch-client -t $(basename $PROJECT)
		else
			new $PROJECT
		fi
	fi
}

compdef {} dev
