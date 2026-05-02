{ inputs, ... }: {

  flake.modules.homeManager.system-desktop = {

    imports = with inputs.self.modules.homeManager; [
      system-default
      opengl-pkgs
      desktop-pkgs
    ];
  };
}
