# Environment
export ZSH_CUSTOM="$DOTFILES/zsh/custom"
export TERM="xterm-256color"

# Modules
for file in $ZSH_CUSTOM/modules/*.zsh; do
    if [ "$NO_TMUX" -eq 1 ] && [ "$(basename $file)" = "tmux.zsh" ]; then
        continue
    fi

    echo "Init module: $file"
    source $file
done

# Lib - Might need to be placed first but i dont remember why
for file in $ZSH_CUSTOM/lib/*.zsh; do
    echo "Init lib: $file"
    source $file
done

# Functions
for file in $ZSH_CUSTOM/functions/*.zsh; do
    echo "Init function: $file"
    source $file
done

# Plugins -- # zstyle '*:compinit' arguments -u
for file in $ZSH_CUSTOM/plugins/*/*.plugin.zsh; do
    echo "Init plugin: $file"
    source $file
done

# General
echo "Init theme"
source "$ZSH_CUSTOM/themes/vapor.zsh"
echo "Init aliases"
source "$ZSH_CUSTOM/aliases.zsh"

# Load user zshrc
echo "Init user .zshrc"
[ -r "$HOME/.zshrc" ] && source "$HOME/.zshrc"

# Clear
printf "\033c"
