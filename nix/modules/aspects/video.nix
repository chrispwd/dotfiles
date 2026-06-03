{ self, ... }: {
  
  flake.modules.homeManager.video = { pkgs, ... }: {

    home.packages = with pkgs; [
      mpv
    ];
    
  };
}
