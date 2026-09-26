# If not running interactively, don't do anything
[[ $- != *i* ]] && return

########################## Aliases #####################################

[ -f ~/.alias ] && . ~/.alias

#################### Local utility functions ###########################

_have() { type "$1" > /dev/null 2>&1; }
_source_if() { [[ -r "$1" ]] && source "$1"; }

################### External utility functions #########################

emd () {
    if [[ -n "$1" ]]; then
        eval "emacs --daemon=${1}"
    else
        emacs --daemon
    fi
}

ems () {
    if [[ -n "$1" ]]; then
        if [[ -n "$2" ]]; then
            eval "emacsclient -s $1 $2"
        else
            eval "emacsclient -s $1 ."
        fi
    else
        echo "Error: no daemon specified" && exit 1
    fi
}

######################### Bash options #################################

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend
set -o emacs
export COLORTERM=truecolor
export PROMPT_DIRTRIM=3

######################### Prompt #######################################

exit_status() {
    [ "$?" == 0 ] && printf "" || printf " (%s)" "$?"
}

# Function to shorten the path
# function shorten_git_path() {
#   local full_path="$PWD"
#   local git_root
  
#   git_root=$(git rev-parse --show-toplevel 2>/dev/null)

#   if [ -n "$git_root" ]; then
#     # If inside a Git repo, display path relative to the repo root
#     local relative_path="${full_path#"$git_root"}"
#     echo "$(basename "$git_root")${relative_path}"
#   else
#     # If not in a Git repo, do normal full path
#     echo "${full_path/$HOME/\~}"
#   fi
# }

is_git_dirty() {
    if git status --porcelain 2>/dev/null | grep -q '.*'; then
        echo "yes"
    else
        echo "no"
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
    local r_bd='\[\e[100;31m\]'
    local g_bd='\[\e[100;32m\]'
    local y_bd='\[\e[100;33m\]'
    local b_bd='\[\e[100;34m\]'
    local m_bd='\[\e[100;35m\]'
    local c_bd='\[\e[100;36m\]'
    local l_bd='\[\e[100;37m\]'
    local rr_bd='\[\e[100;91m\]'
    local gg_bd='\[\e[100;92m\]'
    local yy_bd='\[\e[100;93m\]'
    local bb_bd='\[\e[100;94m\]'
    local mm_bd='\[\e[100;95m\]'
    local cc_bd='\[\e[100;96m\]'
    local ll_bd='\[\e[100;97m\]'
    local cr='\[\e[0m\]'
    local x='\[\e[0m\]'
    local bold='\[\e[1m\]'
    local bold_b='\[\e[34;1m\]'
    local bold_l='\[\e[37;1m\]'
    local bold_ll='\[\e[97;1m\]'
    local clear='\[\e[0m\]'

    B=$(git branch >/dev/null 2>&1 && git branch | grep '\*' | cut -c 3-)

    # [[ $EXIT != 0 ]] && stat="${gg}exit${x} ${r}$EXIT${x} " || stat=""
    # [[ -n "$B" ]] && B="${gg}on${x} ${y}$B${x} "
    # PS1="${stat}${gg}as${x} ${m}\u${x} ${B}${gg}in${x} ${g}\w${x}${gg}:${x}"
    # PS1+="\n${l}\\$ ${x}"

    # path=$(shorten_git_path)
    
    # [[ $EXIT != 0 ]] && stat="exit ${r}${EXIT}${x}\n" || stat=""
    # [[ -n "$B" ]] && B=" on ${y}$B${x}"
    # PS1="${stat}as ${c}\u${x} at ${g}\h${x} in ${b}${path}${x}${B}"
    # PS1+="\n${bb}\\$ ${x}"
    [[ $EXIT != 0 ]] && stat="${r}${EXIT}${x} " || stat=""
    
    if [[ -n "$B" ]]; then
      if [[ "$(is_git_dirty)" == "yes" ]]; then
        B="${y}$B${x} " # yellow
      else
        B="${g}$B${x} " # green
      fi
    fi
    PS1="${stat}${B}${b}\w${x} ${bold}\\$ ${x}"
    # PS1+="\n\\$ "
    
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

_source_if "$HOME/.bash_$(hostname)"

# Automatically added by the Guix install script.
if [ -n "$GUIX_ENVIRONMENT" ]; then
    if [[ $PS1 =~ (.*)"\\$" ]]; then
        PS1="${BASH_REMATCH[1]} [env]\\\$ "
    fi
fi
