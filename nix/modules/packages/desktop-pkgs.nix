{ inputs, ... }: {

  flake.modules.homeManager.desktop-pkgs = { pkgs, ... }: {

    home.packages = with pkgs; [
      pkgs.cbatticon
      pkgs.unstable.cwm
      # pkgs.windowmaker
      # pkgs.dockapps.cputnik
      # pkgs.icewm
      pkgs.dmenu
      pkgs.dunst
      pkgs.feh
      pkgs.keepassxc
      pkgs.nsxiv
      pkgs.pasystray
      pkgs.pavucontrol
      pkgs.picom
      pkgs.pinentry-curses
      pkgs.polybar
      pkgs.setxkbmap
      pkgs.sxhkd
      pkgs.thunar
      pkgs.xbacklight
      pkgs.xclip
      pkgs.xdotool
      pkgs.xdpyinfo
      pkgs.xev
      pkgs.xmodmap
      pkgs.xrandr
      pkgs.zathura
    ];
  };
}
