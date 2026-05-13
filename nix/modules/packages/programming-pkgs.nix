{ inputs, ... }: {

  flake.modules.homeManager.programming-pkgs = { pkgs, ... }: {
      
    home.packages = with pkgs; [
      bash-language-server
      fnm
      nixd
      typescript-language-server
    ];
  };
}
