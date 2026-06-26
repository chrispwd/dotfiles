{ self, ... }: {
  
  flake.modules.homeManager.work = { pkgs, ... }: {
    
    imports = with self.modules.homeManager; [
      programming-pkgs
    ];

    home.packages = with pkgs; [
      php85Packages.composer
      phpactor
      pre-commit
      k9s
      mysql84
    ];

  };
    
}
