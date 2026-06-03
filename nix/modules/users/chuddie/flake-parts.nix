{ inputs, withSystem, ... }: {

  flake.homeConfigurations."chuddie" = withSystem "x86_64-linux" ({ pkgs, ... }:
    inputs.home-manager.lib.homeManagerConfiguration {
    
      inherit pkgs;
      modules = [
        {
          nixpkgs.overlays = [
            (final: prev: {
              ncmpcpp = prev.ncmpcpp.override {
                visualizerSupport = true;
              };
            })
          ];
          nixpkgs.config.allowUnfree = true;
        }
        inputs.self.modules.homeManager.chuddie
      ];
    }
  );
}
