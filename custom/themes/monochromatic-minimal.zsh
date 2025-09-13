local white="%F{255}%"
local gray="%F{245}%"
local dark_gray="%F{240}%"

local reset_color="${gray}"
local command_color="${white}"

local user_symbol="%{$white}%(!.#.$)%{$reset_color}"
local return_code="%{$dark_gray}%(?..%? ↵%{$reset_color})"
local user_host="${gray}n@%m${reset_color}"
local current_dir="${white}~${reset_color}"

precmd() {
	PROMPT="%{$reset_color}${user_host}  ${current_dir}  $(git_prompt_info)
%{$reset_color}${user_symbol}%{$command_color} "
}

RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color}\e[24m"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{255}\e[4m"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{255}"
