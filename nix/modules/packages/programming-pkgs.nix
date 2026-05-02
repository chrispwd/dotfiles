{ inputs, ... }: {

  flake.modules.homeManager.programming-pkgs = { pkgs, ... }: {
      
    home.packages = with pkgs; [
      bash-language-server
      fnm
      nixd
      php85Packages.composer
      phpactor
    ];
  };
}
