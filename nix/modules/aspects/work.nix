{ self, ... }: {
  
  flake.modules.homeManager.work = { pkgs, ... }: {
    
    imports = with self.modules.homeManager; [
      programming-pkgs
    ];

    home.packages = with pkgs; [
      azure-cli
      k9s
      mysql84
      php85Packages.composer
      phpactor
      pre-commit
    ];

  };
    
}
