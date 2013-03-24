function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "(%{$fg[green]%}"`basename $VIRTUAL_ENV`"%{$reset_color%}) "
}

PROMPT='$(virtualenv_info)%{$fg[yellow]%}%~%{$reset_color%}$(git_prompt_info)\$ '
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗%{$reset_color%}"

RPROMPT='${time}'
time="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
