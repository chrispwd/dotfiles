{ inputs, ... }: {

  flake.modules.homeManager.fonts = { pkgs, ... }: {

    fonts.fontconfig.enable = true;
    
    home.packages = with pkgs; [
      nerd-fonts.caskaydia-cove
      nerd-fonts.iosevka
      nerd-fonts.symbols-only
      aporetic
      ibm-plex
    ];
  };
}
