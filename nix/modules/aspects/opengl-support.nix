{ self, ... }: {
  
  flake.modules.homeManager.opengl-support = { pkgs, ... }: {

    # only needed if unable to have sudo access on host system
    # home.packages = with pkgs; [
    #   nixgl.auto.nixGLDefault
    # ];

    targets.genericLinux.gpu.enable = true;
  };
}
