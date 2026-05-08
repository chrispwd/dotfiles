{ self, ... }: {
  
  flake.modules.homeManager.opengl-support = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      nixgl.auto.nixGLDefault
    ];
  };
}
