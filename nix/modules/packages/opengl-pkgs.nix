{ inputs, ... }: {

  flake.modules.homeManager.opengl-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      # mpv
      # ffmpeg
      kitty
      nixgl.auto.nixGLDefault
    ];
  };
}
