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

local EXIT="$?"
local bla='\[\e[0;30m\]'
local red='\[\e[0;31m\]'
local grn='\[\e[0;32m\]'
local yel='\[\e[0;33m\]'
local blu='\[\e[0;34m\]'
local mag='\[\e[0;35m\]'
local cya='\[\e[0;36m\]'
local whi='\[\e[0;37m\]'
local brbla='\[\e[0;90m\]'
local brred='\[\e[0;91m\]'
local brgre='\[\e[0;92m\]'
local bryel='\[\e[0;93m\]'
local brblu='\[\e[0;94m\]'
local brmag='\[\e[0;95m\]'
local brcya='\[\e[0;96m\]'
local brwhi='\[\e[0;97m\]'
local cr='\[\e[0m\]'
local clear='\[\e[0m\]'
local bg_base01_fg_gre='\[\e[100;32m\]'
local bg_base01_fg_mag='\[\e[100;35m\]'
local bg_base01_fg_cya='\[\e[100;36m\]'
local bg_base01_fg_yel='\[\e[100;33m\]'
local bg_base01_fg_fg='\[\e[100;37m\]'
local bg_base01_fg_dull='\[\e[100;92m\]'

B=$(git branch --show-current 2>/dev/null)

#[[ -n "$B" ]] && B="$wh($cr$y$B$cr$wh)$cr"
#[[ -n "$B" ]] && B=" $y($B)$cr"
[[ -n "$B" ]] && B="$clear$bg_base01_fg_fg on branch $clear$bg_base01_fg_yel$B"

#PS1="$r\$(exit_status)$cr[$g\u$cr$wh@$cr$b\h$cr$wh:$cr$mg\W$cr$B] \\$ "
# PS1="$g\u$cr at $b\h$cr$B in $mg\w$cr
# $r\$(exit_status)$cr> \\$ "
#PS1="$mg\w$cr$B$r\$(exit_status)$cr \\$ "
#PS1="# $g@\h:$cr $mg\w$cr$B$r\$(exit_status)$cr"
PS1="$bg_base01_fg_cya\u$bg_base01_fg_fg from $bg_base01_fg_gre\h$bg_base01_fg_fg in $bg_base01_fg_mag\w$B$bg_base01_fg_fg last command at $bg_base01_fg_dull\t"
#PS1="$test\u@\h:$clear $bg_base01_fg_mag\w$clear"
PS1+="\033[K"
[[ $EXIT != 0 ]] && stat="($red$EXIT$clear)" || stat=""
PS1+="\n$clear$stat > "
PS1+="\033[K"

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

