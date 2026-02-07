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
export COLORTERM=truecolor

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
    local d='\[\e[0;30m\]'
    local r='\[\e[0;31m\]'
    local g='\[\e[0;32m\]'
    local y='\[\e[0;33m\]'
    local b='\[\e[0;34m\]'
    local m='\[\e[0;35m\]'
    local c='\[\e[0;36m\]'
    local l='\[\e[0;37m\]'
    local dd='\[\e[0;90m\]'
    local rr='\[\e[0;91m\]'
    local gg='\[\e[0;92m\]'
    local yy='\[\e[0;93m\]'
    local bb='\[\e[0;94m\]'
    local mm='\[\e[0;95m\]'
    local cc='\[\e[0;96m\]'
    local ll='\[\e[0;97m\]'
    local cr='\[\e[0m\]'
    local x='\[\e[0m\]'
    local clear='\[\e[0m\]'

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
    [[ -n "$B" ]] && B="on ${m}$B${x} "

    #[[ $EXIT != 0 ]] && stat="${red} failed$clear${brgre} code ${red}$EXIT" || stat=""
    [[ $EXIT != 0 ]] && stat="exit ${r}$EXIT${x} " || stat=""
    # PS1="$bg_base01_fg_cya\u$bg_base01_fg_dull from $bg_base01_fg_gre\h$bg_base01_fg_dull in $bg_base01_fg_mag\$(shorten_git_path)$B$bg_base01_fg_dull last command at $bg_base01_fg_fg\t$stat"
    # PS1="${brgre}[ in ${gre}\w$B${brgre} at ${brblu}\t$stat${brgre} ]$clear"
    # PS1+="\n> "
    PS1="${stat}as ${c}\u${x} ${B}in ${g}\w${x}:\n❯ "
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

