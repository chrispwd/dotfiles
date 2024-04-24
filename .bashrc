# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source aliasrc
#-------------------------------------------------------------------------

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliases"

# Local utility functions
#-------------------------------------------------------------------------

_have() { type "$1" > /dev/null 2>&1; }

# Bash options
#-------------------------------------------------------------------------
shopt -s checkwinsize
shopt -s expand_aliases
set -o vi

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

# Bash Prompt
#-------------------------------------------------------------------------
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

# Development tools
#-------------------------------------------------------------------------
if _have zoxide; then
   eval "$(zoxide init bash)"
fi

if _have mise; then
   eval "$(mise activate bash)"
fi
