{ inputs, ... }: {

  flake.modules.homeManager.system-default = {

    imports = with inputs.self.modules.homeManager; [
      system-minimal
      fun-cli-pkgs
      # programming-pkgs
      # opengl-pkgs
    ];
  };
}
