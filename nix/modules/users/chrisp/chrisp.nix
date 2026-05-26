{ self, ... }: {
  
  flake.modules.homeManager."chrisp" = {
    
    imports = with self.modules.homeManager; [
      system-default
      programming-pkgs
    ];

    home.username = "chrisp";
    home.homeDirectory = "/home/chrisp";
  };
    
}
