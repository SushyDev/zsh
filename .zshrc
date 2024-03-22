# Environment
export ZSH_CUSTOM="$DOTFILES/zsh/custom"

# Lib
for file in $ZSH_CUSTOM/lib/*.zsh; do
    source $file
done

# Modules
for file in $ZSH_CUSTOM/modules/*.zsh; do
    source $file
done

# Functions
for file in $ZSH_CUSTOM/functions/*.zsh; do
    source $file
done

# Plugins -- # zstyle '*:compinit' arguments -u
for file in $ZSH_CUSTOM/plugins/*/*.plugin.zsh; do
    source $file
done

# General
source "$ZSH_CUSTOM/themes/vapor.zsh"
source "$ZSH_CUSTOM/aliases.zsh"

# Load user zshrc
[ -r "$HOME/.zshrc" ] && source "$HOME/.zshrc"
