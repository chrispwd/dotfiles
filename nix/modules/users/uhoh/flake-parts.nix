{ inputs, withSystem, ... }: {

  flake.homeConfigurations."uhoh" = withSystem "x86_64-linux" ({ pkgs, ... }:
    inputs.home-manager.lib.homeManagerConfiguration {
    
      inherit pkgs;
      # pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        {
          nixpkgs.overlays = [
            (final: prev: {
              ncmpcpp = prev.ncmpcpp.override {
                visualizerSupport = true;
              };
            })
            inputs.nixgl.overlays.default
          ];
          # nixpkgs.config.allowUnfree = true;
        }
        inputs.self.modules.homeManager.uhoh
      ];

    }
  );
}
