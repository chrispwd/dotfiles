{ inputs, withSystem, ... }: {

  flake.homeConfigurations."chrisperez" = withSystem "aarch64-darwin" ({ pkgs, ...}:
    inputs.home-manager.lib.homeManagerConfiguration {
    
      # pkgs = import inputs.nixpkgs { hostPlatform = "aarch64-darwin"; };
      inherit pkgs;
      modules = [
        inputs.self.modules.homeManager.chrisperez
      ];

    }
  );
}
