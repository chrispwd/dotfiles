{ self, ... }: {
  
  flake.modules.homeManager."uhoh" = {
    
    imports = with self.modules.homeManager; [
      system-desktop
      terminals
      opengl-support
      fonts
      programming-pkgs
      music-pkgs
      # video
      # add more here
    ];

    home.username = "uhoh";
    home.homeDirectory = "/home/uhoh";
  };
    
}
