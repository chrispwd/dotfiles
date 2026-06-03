{ self, ... }: {
  
  flake.modules.homeManager."chuddie" = {
    
    imports = with self.modules.homeManager; [
      system-desktop
      fonts
      music-pkgs
    ];

    home.username = "chuddie";
    home.homeDirectory = "/home/chuddie";
  };
    
}
