# If not running interactively, don't do anything
[[ $- != *i* ]] && return

########################## Aliases #####################################

[ -f ~/.alias ] && . ~/.alias

#################### Local utility functions ###########################

_have() { type "$1" > /dev/null 2>&1; }
_source_if() { [[ -r "$1" ]] && source "$1"; }

######################### Bash options #################################

shopt -s checkwinsize
shopt -s expand_aliases
set -o emacs

######################### Prompt #######################################

exit_status() {
    [ "$?" == 0 ] && printf "" || printf " ($?)"
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
local brbl='\[\e[0;90m\]'
local brr='\[\e[0;91m\]'
local brg='\[\e[0;92m\]'
local bry='\[\e[0;93m\]'
local brb='\[\e[0;94m\]'
local brmg='\[\e[0;95m\]'
local brcy='\[\e[0;96m\]'
local brwh='\[\e[0;97m\]'
local cr='\[\e[0m\]'

B=$(git branch --show-current 2>/dev/null)

#[[ -n "$B" ]] && B="$wh($cr$y$B$cr$wh)$cr"
[[ -n "$B" ]] && B=" $y($B)$cr"

#PS1="$r\$(exit_status)$cr[$g\u$cr$wh@$cr$b\h$cr$wh:$cr$mg\W$cr$B] \\$ "
# PS1="$g\u$cr at $b\h$cr$B in $mg\w$cr
# $r\$(exit_status)$cr> \\$ "
#PS1="$mg\w$cr$B$r\$(exit_status)$cr \\$ "
PS1="# $g@\h:$cr $brcy\w$cr$B$r\$(exit_status)$cr
# > "

}

PROMPT_COMMAND="_ps1"

######################### Development tools ############################

if _have zoxide; then
   eval "$(zoxide init bash)"
fi

if _have fnm; then
    eval "$(fnm env --use-on-cd)"
fi

######################### Private / Work Configs #######################

_source_if "$HOME/.bash_work"
_source_if "$HOME/.bash_private"

# Automatically added by the Guix install script.
if [ -n "$GUIX_ENVIRONMENT" ]; then
    if [[ $PS1 =~ (.*)"\\$" ]]; then
        PS1="${BASH_REMATCH[1]} [env]\\\$ "
    fi
fi

