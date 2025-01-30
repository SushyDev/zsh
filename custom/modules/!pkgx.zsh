[ ! "$(command -v pkgx)" ] && echo "Installing pkgx" && sudo zsh -c 'eval "$(curl -Ssf https://pkgx.sh)"'

[ ! $(command -v tmux) ] && eval $(pkgx +tmux)
[ ! $(command -v fzf) ] && eval $(pkgx +fzf)
[ ! $(command -v rg) ] && eval $(pkgx +rg)
[ ! $(command -v nvim) ] && eval $(pkgx +neovim.io)
