{ inputs, ... }: {

  flake.modules.homeManager.opengl-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      nixgl
      mpv
      ffmpeg
      kitty
    ];
  };
}
