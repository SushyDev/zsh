local nix_add() {
	# Input validation
	if [ $# -eq 0 ] || [ -z "$1" ]; then
		echo "Error: Package name is required" >&2
		return 1
	fi

	# Check if command already exists
	local package_name="$1"
	if command -v "$package_name" >/dev/null 2>&1; then
		return 0
	fi

	# Check if nix command exists
	if ! command -v nix >/dev/null 2>&1; then
		echo "Error: nix command not found" >&2
		return 1
	fi

	# Validate package name (basic sanitization)
	if ! printf '%s' "$package_name" | grep -qE '^[a-zA-Z0-9._-]+$'; then
		echo "Error: Invalid package name '$package_name'" >&2
		return 1
	fi

	# Attempt to build the package and capture output
	local nix_output
	if ! nix_output=$(nix build --no-link --print-out-paths "nixpkgs#$package_name" 2>&1); then
		echo "Error: Failed to build package '$package_name'" >&2
		echo "$nix_output" >&2
		return 1
	fi

	# Validate the output path exists
	if [ ! -d "$nix_output" ]; then
		echo "Error: Build output path does not exist: $nix_output" >&2
		return 1
	fi

	# Check if bin directory exists in the output
	if [ ! -d "$nix_output/bin" ]; then
		echo "Error: No bin directory found in package output" >&2
		return 1
	fi

	# Safely update PATH
	PATH="$nix_output/bin:$PATH"
	export PATH

	return 0
}

alias ".$"="nix_add $1"
