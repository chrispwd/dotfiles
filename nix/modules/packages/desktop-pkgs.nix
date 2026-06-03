{ inputs, ... }: {

  flake.modules.homeManager.desktop-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      # cwm
      windowmaker
      cbatticon
      dockapps.cputnik
      dockapps.wmCalClock
      dockapps.wmsystemtray
      dmenu
      dunst
      feh
      keepassxc
      nsxiv
      pasystray
      pavucontrol
      picom
      polybar
      setxkbmap
      sxhkd
      pcmanfm
      xbacklight
      xclip
      xdotool
      xdpyinfo
      xev
      xinit
      xmodmap
      xset
      xsetroot
      xrandr
      zathura
    ];
  };
}
