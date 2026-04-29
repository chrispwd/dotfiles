{ self, ... }: {
  
  flake.modules.homeManager.uhoh = {
    
    imports = with self.modules.homeManager; [
      base-pkgs
      # add more here
    ];

    home.username = "uhoh";
    home.homeDirectory = "/home/uhoh";
  };
    
}
