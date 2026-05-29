{ self, ... }: {
  
  flake.modules.homeManager."chrisperez" = {
    
    imports = with self.modules.homeManager; [
      system-default
      terminals
      # opengl-support
      fonts
      work
      macos
      # music-pkgs
      # add more here
    ];

    home.username = "chrisperez";
    home.homeDirectory = "/Users/chrisperez";
  };
    
}
