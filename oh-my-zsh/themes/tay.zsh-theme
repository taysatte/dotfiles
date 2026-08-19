
# tay zsh theme

return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT="%{$fg[red]%}%B[tay]%b \$(git_prompt_info)%B%{$fg[red]%}%b"
RPS1="%B%{$fg[red]%}[%2~]%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%B%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %{$fg[yellow]%}%b"

unset return_code host_color
