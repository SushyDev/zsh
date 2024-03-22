function proxy() {
	set -a && source "~/.proxyman/proxyman_env_automatic_setup.sh" && set +a
}

compdef {} proxy
