#
# ~/.bash_profile - sources shell-agnostic profile and bashrc for bash
#

[ -f ~/.profile ] && . ~/.profile
[ -f ~/.bashrc ] && . ~/.bashrc

if [ -e /home/uhoh/.nix-profile/etc/profile.d/nix.sh ]; then . /home/uhoh/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
