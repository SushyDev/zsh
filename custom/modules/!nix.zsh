local nix_add() {
	PATH="$(nix-build --no-out-link '<nixpkgs>' -A $1)/bin:$PATH"
}

alias ".$"="nix_add $1"
