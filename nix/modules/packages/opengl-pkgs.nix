{ inputs, ... }: {

  flake.modules.homeManager.opengl-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      nixgl.nixGLDefault
      mpv
      ffmpeg
      kitty
    ];
  };
}
