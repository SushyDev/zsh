function clean-pkgx() {
	sudo rm /usr/local/bin/pkgx
	rm -rf ~/.pkgx
}

compdef {} clean-pkgx

# function init() {
# 	if [ "$1" = 'off' ]
# 	then
# 		_pkgx_dev_off
# 	elif type _pkgx_dev_off > /dev/null 2>&1
# 	then
# 		echo 'dev: environment already active' >&2
# 		return 1
# 	else
# 		if type _pkgx_reset > /dev/null 2>&1
# 		then
# 			_pkgx_reset
# 		fi
# 		eval "$(command pkgx --internal.activate "$PWD" "$@")"
# 	fi
# }
#
# compdef {} init
