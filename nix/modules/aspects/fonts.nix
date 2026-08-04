{ inputs, ... }: {

  flake.modules.homeManager.fonts = { pkgs, ... }: {

    fonts.fontconfig.enable = true;
    
    home.packages = with pkgs; [
      # nerd-fonts.caskaydia-cove
      # nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
      nerd-fonts.blex-mono
      ibm-plex
    ];
  };
}
