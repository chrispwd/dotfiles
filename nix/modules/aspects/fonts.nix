{ inputs, ... }: {

  flake.modules.homeManager.fonts = { pkgs, ... }: {

    fonts.fontconfig.enable = true;
    
    home.packages = with pkgs; [
      nerd-fonts.inconsolata-go
      nerd-fonts.iosevka
      nerd-fonts.symbols-only
      aporetic
      ibm-plex
    ];
  };
}
