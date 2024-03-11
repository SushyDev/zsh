local user_symbol='%(!.#.$)'
local reset_color="%F{015}%"
local return_code="%F{009}%(?..%? ↵%{$reset_color})"
local user_host="%F{213}%n@%m%{$reset_color}"
local current_dir="%F{045}%~%{$reset_color}"

precmd() {
    PROMPT="╭${user_host} ${current_dir} $(git_prompt_info)
╰${user_symbol} "
}

RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{202}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{010}"
