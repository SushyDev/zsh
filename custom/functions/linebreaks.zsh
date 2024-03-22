function d2u() {
	git config core.autocrlf false
	git rm --cached -r .
	git reset --hard
}

compdef {} d2u

function u2d() {
	git config core.autocrlf true
	git rm --cached -r .
	git reset --hard
}

compdef {} u2d
