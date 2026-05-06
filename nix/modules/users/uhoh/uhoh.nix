{ self, ... }: {
  
  flake.modules.homeManager."uhoh" = {
    
    imports = with self.modules.homeManager; [
      system-default
      opengl-pkgs
      music-pkgs
      # add more here
    ];

    home.username = "uhoh";
    home.homeDirectory = "/home/uhoh";
  };
    
}
