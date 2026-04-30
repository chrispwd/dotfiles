{ inputs, ... }: {
  
  flake.modules.homeManager.uhoh = { pkgs, ... }: {
    
    imports = with inputs.self.modules.homeManager; [
      # shared
      base-pkgs
      # add more here
    ];

    home.username = "uhoh";
    home.homeDirectory = "/home/uhoh";

    home.packages = with pkgs; [
      nixgl.nixGLIntel
    ];

    home.stateVersion = "25.11";
  };
    
}
