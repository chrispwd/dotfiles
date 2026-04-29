{ inputs, ... }: {
  
  flake.homeConfigurations.uhoh = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
    modules = [
      inputs.self.modules.homeManager.common
      inputs.self.modules.homeManager.uhoh
    ];
  };
}
