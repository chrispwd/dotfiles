{ self, ... }: {
  
  flake.modules.homeManager."uhoh" = {pkgs, ... }: {
    
    imports = with self.modules.homeManager; [
      system-default
      # add more here
    ];

    home.username = "uhoh";
    home.homeDirectory = "/home/uhoh";

    home.packages = with pkgs; [
      nixgl.nixGLIntel
    ];
  };
    
}
