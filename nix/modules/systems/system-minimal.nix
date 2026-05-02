{ inputs, ... }: {

  flake.modules.homeManager.system-minimal = {

    imports = with inputs.self.modules.homeManager; [
      base-pkgs
    ];
    
    home.stateVersion = "25.11";
  };
}
