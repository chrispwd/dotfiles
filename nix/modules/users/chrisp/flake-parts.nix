{ inputs, withSystem, ... }: {

  flake.homeConfigurations."chrisp" = withSystem "x86_64-linux" ({ pkgs, ... }:
    inputs.home-manager.lib.homeManagerConfiguration {
    
      inherit pkgs;
      # pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;
      modules = [
        inputs.self.modules.homeManager.chrisp
      ];

    }
  );
}
