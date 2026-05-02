{ inputs, ... }: {

  flake.modules.homeManager.desktop-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      cwm
      dmenu
      dunst
      feh
      mpd
      ncmpcpp
      nsxiv
      picom
      polybar
      sxhkd
      thunar
      xbacklight
      xev
      xmodmap
      yt-dlp
      zathura
    ];
  };
}
