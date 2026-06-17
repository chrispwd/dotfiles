{ inputs, ... }: {

  flake.modules.homeManager.desktop-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      icewm
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
      xmodmap
      xrandr
      zathura
    ];
  };
}
