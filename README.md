# Zsh

A minimal, efficient Zsh configuration focused on productivity and clean aesthetics.

## Overview

This Zsh setup provides a streamlined shell experience with syntax highlighting, intelligent autocompletion, command suggestions, and seamless integration with development tools.

## System Dependencies

### Required
- **zsh** - The Z shell
- **git** - Version control (for git prompt functions)

### Optional (enhance functionality)
- **tmux** - Terminal multiplexer (for session management)
- **fzf** - Fuzzy finder (for project selection)
- **neovim** - Text editor (configured as default EDITOR)
- **nix** - Package manager (for `.` alias integration)

## Plugins

### Core Plugins

- **[fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)**
  - Provides fast syntax highlighting for commands and file paths
  - Supports 200+ programming languages and file types
  - Minimal performance impact with optimized parsing

- **[zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)**
  - Intelligent tab completion with fuzzy matching
  - Real-time completion as you type
  - Context-aware suggestions from command history

- **[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)**
  - Suggests commands based on command history
  - Navigate suggestions with arrow keys or Ctrl+E/F
  - Learns from your usage patterns

## Notable Configuration

### Theme
- **monochromatic-minimal** - Clean, minimal prompt design
- Git status integration in prompt
- Color-coded return codes
- User@host and current directory display

### Key Features

#### Git Integration
- Comprehensive git prompt with status indicators
- Branch name, dirty/clean status
- Ahead/behind remote tracking
- Stash indicators
- Customizable prompt symbols

#### Session Management
- `new <directory>` - Create new tmux session in directory
- `dev` - Fuzzy-find and switch to/switch to project sessions
- Automatic tmux session detection and switching

#### Custom Functions
- `copy-history` - Copy command history to clipboard
- `linebreaks` - Handle line break formatting
- `proxyman` - Proxy management utilities

#### Nix Integration
- `. <package>` - Add nix package to PATH temporarily
- Seamless nix package access without permanent installation

### Completion System
- Optimized completion loading with caching
- Custom completion directories support
- Fast initialization with `.zcompdump` management

## Performance

- Lazy-loaded completions with caching
- Optimized git prompt functions
- Minimal plugin overhead
- Fast startup times

## Integrations

### Development Tools
- **Neovim** - Default editor with `vim` alias
- **Git** - Full git workflow support
- **Tmux** - Project-based session management
- **fzf** - Fuzzy finding for file/project selection

### Package Management
- **Nix** - Declarative package management

## Installation

### Nix (Recommended)
This configuration is designed to work with the main dotfiles flake. See the main [README](https://github.com/SushyDev/dotfiles/blob/main/README.md) for Nix-based installation.

### Manual Setup
1. Ensure Zsh is your default shell
2. Clone this repository
3. Set `ZDOTDIR` to point to this directory
4. Source the `.zshrc` file

```bash
export ZDOTDIR="$HOME/.config/zsh"
source "$ZDOTDIR/.zshrc"
```
