#
# Uhoh's Zoomer Shell
#
# git info for prompt
autoload -U colors && colors
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# simple
PROMPT='${vcs_info_msg_0_}%(?..(%F{1}%?%f%))[%F{2}%n%f@%F{4}%m%f %F{5}%3~%f] %# ' 
zstyle ':vcs_info:git:*' formats '(%F{3}%b%f%)'
# two-line
#PROMPT='%(?.%F{7}╭─╸%f.%F{7}╭─╸%f%F{1}%B✗ %?%b %f)%b%B%F{14}%n%f%b@%B%F{2}%m%f%b %B%F{5}%3~%f%b${vcs_info_msg_0_}%b
#%F{7}╰╸%f%# '
#zstyle ':vcs_info:git:*' formats ' %B%F{3}%b%f'
#PROMPT='%(?..%F{1}%B✗ %?%b %f)%b%B%F{14}%n%f%b at %B%F{2}%m%f%b in %B%F{5}%3~%f%b ${vcs_info_msg_0_}%b
#%F{4}%#%f '
#zstyle ':vcs_info:git:*' formats 'on %B%F{3}%b%f'

# Pipes
#PROMPT='%(?.%F{8}┏━━%f.%F{8}┏━━[%f%F{9}✗ %?%f%F{8}]━━%f)%F{8}[%f%F{#abb2bf} %n%f%F{8}]━━[%f%F{13} %3~%f%F{8}]%f${vcs_info_msg_0_}
#%F{8}┗%f%F{12}→%f '
#zstyle ':vcs_info:git:*' formats '%F{8}━━[%f%F{3} %b%f%F{8}]%f'
# icons
#PROMPT='%B%(?..%F{9} ✗ %? %f)%F{13}  %3~ %f${vcs_info_msg_0_}
#%F{12} >%f%b '
#zstyle ':vcs_info:git:*' formats '%F{3}  %b%f'

setopt autocd                   # cd into directory just by typing it
stty stop undef                 # Disable C-s to freeze terminal
unsetopt BEEP                   # Disable that HORRIBLE beep

# Source aliases
[ -f ~/.alias ] && . ~/.alias

# Source work stuff
if [ $(uname -n) = "wizmac.local" ]; then
    . "$HOME/.secrets"
fi

# vim mode
#bindkey -v
# emacs mode
bindkey -e
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
# Change cursor shape for different vi modes.
# function zle-keymap-select () {
#     case $KEYMAP in
#         vicmd) echo -ne '\e[1 q';;      # Blinking Block
#         #viins|main) echo -ne '\e[2 q';; # Solid Block
#         viins|main) echo -ne '\e[3 q';; # Blinking underline
#     esac
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     echo -ne "\e[3 q"
#     #echo -ne "\e[1 q"
# }
# zle -N zle-line-init
# echo -ne '\e[3 q'                       # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[3 q' ;}        # Use beam shape cursor for each new prompt.

# Auto/tab complete
autoload -U compinit; compinit
_comp_options+=(globdots)               # Include hidden files.
#fpath+=~/.config/zsh/completions/_fnm   # fnm completions

# Plugins
# zsh-fast-syntax-highlighting
#source $ZDOTDIR/plugins/fast-syntax-highlighting/F-Sy-H.plugin.zsh

# zoxide :: zsh-z replacement
eval "$(zoxide init zsh)"

# fnm
eval "$(fnm env --use-on-cd --shell=zsh)"

# direnv
eval "$(direnv hook zsh)"

# rbenv : for ruby
eval "$(rbenv init - zsh)"

# pyenv : for python
eval "$(pyenv init -)"

# Source nix profile
[ -f $HOME/.nix-profile/etc/profile.d/nix.sh ] && source $HOME/.nix-profile/etc/profile.d/nix.sh

# emacs-eat shell integration
[ -n "$EAT_SHELL_INTEGRATION_DIR" ] && \
    source "$EAT_SHELL_INTEGRATION_DIR/zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/uhoh/.local/sdkman/bin/sdkman-init.sh" ]] && source "/home/uhoh/.local/sdkman/bin/sdkman-init.sh"
