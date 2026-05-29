{ self, ... }: {
  
  flake.modules.homeManager.macos = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      stats
    ];
  };
}
