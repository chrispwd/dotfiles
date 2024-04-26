# If not running interactively, don't do anything
[[ $- != *i* ]] && return

########################## Aliases #####################################

[ -f ~/.alias ] && . ~/.alias

#################### Local utility functions ###########################

_have() { type "$1" > /dev/null 2>&1; }

######################### Bash options #################################

shopt -s checkwinsize
shopt -s expand_aliases
set -o vi

######################### Prompt #######################################

exit_status() {
    [ "$?" == 0 ] && printf "" || printf "$? "
}

_ps1() {

local bl='\[\e[0;30m\]'
local r='\[\e[0;31m\]'
local g='\[\e[0;32m\]'
local y='\[\e[0;33m\]'
local b='\[\e[0;34m\]'
local mg='\[\e[0;35m\]'
local cy='\[\e[0;36m\]'
local wh='\[\e[0;37m\]'
local cr='\[\e[0m\]'

B=$(git branch --show-current 2>/dev/null)

[[ -n "$B" ]] && B="$wh($cr$y$B$cr$wh)$cr"

PS1="$r\$(exit_status)$cr[$g\u$cr$wh@$cr$b\h$cr$wh:$cr$mg\W$cr$B] \\$ "

}

PROMPT_COMMAND="_ps1"

######################### Development tools ############################

if _have zoxide; then
   eval "$(zoxide init bash)"
fi

if _have mise; then
   eval "$(mise activate bash)"
fi
