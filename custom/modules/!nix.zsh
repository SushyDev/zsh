opencode() {
	nix run nixpkgs#opencode -- "$@"
}

tmux() {
	nix run nixpkgs#tmux -- "$@"
}

fzf() {
	nix run nixpkgs#fzf -- "$@"
}

rg() {
	nix run nixpkgs#ripgrep -- "$@"
}

nvim() {
	nix run nixpkgs#neovim -- "$@"
}

glab() {
	nix run nixpkgs#glab -- "$@"
}

local nix_add() {
	PATH="$(nix-build --no-out-link '<nixpkgs>' -A $1)/bin:$PATH"
}

alias ".$"="nix_add $1"
