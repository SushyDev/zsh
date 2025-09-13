# Environment
export ZSH_CUSTOM="$(dirname $0)/custom"


# Lib - Might need to be placed first but i dont remember why
for file in $ZSH_CUSTOM/lib/*.zsh; do
	echo "Init lib:	$file"
	source $file
done

# Modules
for file in $ZSH_CUSTOM/modules/*.zsh; do
	echo "Init module:	$file"
	source $file
done

# Functions
for file in $ZSH_CUSTOM/functions/*.zsh; do
	echo "Init function:	$file"
	source $file
done

# Plugins -- # zstyle '*:compinit' arguments -u
for file in $ZSH_CUSTOM/plugins/*/*.plugin.zsh; do
	echo "Init plugin:	$file"
	source $file
done

# General
echo "Init theme:	$ZSH_CUSTOM/themes/monochromatic.zsh"
source "$ZSH_CUSTOM/themes/monochromatic-minimal.zsh"
echo "Init settings:	$ZSH_CUSTOM/settings.zsh"
source "$ZSH_CUSTOM/settings.zsh"

# Load user zshrc
echo "Init ~/.zshrc:	$HOME/.zshrc"
[ -r "$HOME/.zshrc" ] && source "$HOME/.zshrc"

# Clear
# printf $(clear -x)
