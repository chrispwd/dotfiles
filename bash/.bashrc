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

# Function to shorten the path
function shorten_git_path() {
  local full_path="$PWD"
  local git_root=$(git rev-parse --show-toplevel 2>/dev/null)

  if [ -n "$git_root" ]; then
    # If inside a Git repo, display path relative to the repo root
    local relative_path="${full_path#$git_root}"
    if [ -z "$relative_path" ]; then
      # If at the root of the repo
      # echo "$(basename "$git_root")"
      echo "${full_path/#$HOME/~}" | sed 's:\([^/]\)[^/]*/:\1/:g'
      # echo "$relative_path"
    else
      # Prepend with shortened repo name and then relative path
      echo "$(basename "$git_root" | cut -c1-3)...${relative_path}"
    fi
  else
    # If not in a Git repo, shorten the entire path
    # You can customize this shortening logic further (e.g., using ~ for HOME)
    echo "${full_path/#$HOME/~}" | sed 's:\([^/]\)[^/]*/:\1/:g'
  fi
}

_ps1() {

local EXIT="$?"
local bla='\[\e[0;30m\]'
local red='\[\e[0;31m\]'
local gre='\[\e[0;32m\]'
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
local bg_base01_fg_red='\[\e[100;31m\]'
local bg_base01_fg_brred='\[\e[100;91m\]'
local bg_base01_fg_gre='\[\e[100;32m\]'
local bg_base01_fg_mag='\[\e[100;35m\]'
local bg_base01_fg_cya='\[\e[100;36m\]'
local bg_base01_fg_yel='\[\e[100;33m\]'
local bg_base01_fg_fg='\[\e[100;37m\]'
local bg_base01_fg_bg='\[\e[100;30m\]'
local bg_base01_fg_dull='\[\e[100;92m\]'

B=$(git branch --show-current 2>/dev/null)

# old
#[[ -n "$B" ]] && B="$wh($cr$y$B$cr$wh)$cr"
#[[ -n "$B" ]] && B=" $y($B)$cr"
#PS1="$r\$(exit_status)$cr[$g\u$cr$wh@$cr$b\h$cr$wh:$cr$mg\W$cr$B] \\$ "
# PS1="$g\u$cr at $b\h$cr$B in $mg\w$cr
# $r\$(exit_status)$cr> \\$ "
#PS1="$mg\w$cr$B$r\$(exit_status)$cr \\$ "
#PS1="# $g@\h:$cr $mg\w$cr$B$r\$(exit_status)$cr"

#[[ -n "$B" ]] && B="$clear${brgre} on $clear${brred}$B"
[[ -n "$B" ]] && B="${brred}$B${clear} "

#[[ $EXIT != 0 ]] && stat="${red} failed$clear${brgre} code ${red}$EXIT" || stat=""
[[ $EXIT != 0 ]] && stat="${red}$EXIT${clear}" || stat=""
# PS1="$bg_base01_fg_cya\u$bg_base01_fg_dull from $bg_base01_fg_gre\h$bg_base01_fg_dull in $bg_base01_fg_mag\$(shorten_git_path)$B$bg_base01_fg_dull last command at $bg_base01_fg_fg\t$stat"
# PS1="${brgre}[ in ${gre}\w$B${brgre} at ${brblu}\t$stat${brgre} ]$clear"
# PS1+="\n> "
PS1="$stat \t $B${gre}\w${clear} \\$ "
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

