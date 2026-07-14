{ inputs, ... }: {

  flake.modules.homeManager.desktop-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      cbatticon
      cwm
      # icewm
      dmenu
      dunst
      feh
      keepassxc
      nsxiv
      pasystray
      pavucontrol
      picom
      pinentry-curses
      polybar
      setxkbmap
      sxhkd
      pcmanfm
      xbacklight
      xclip
      xdotool
      xdpyinfo
      xev
      xmodmap
      xrandr
      zathura
    ];
  };
}
