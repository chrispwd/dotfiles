{ self, ... }: {
  
  flake.modules.homeManager.terminals = { pkgs, ... }: {

    home.packages = with pkgs; [
      kitty
    ];
  };
}
