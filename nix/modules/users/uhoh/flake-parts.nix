{ inputs, ... }: {

  flake.homeConfigurations."uhoh" = inputs.home-manager.lib.homeManagerConfiguration {
    
    pkgs = import inputs.nixpkgs { hostPlatform = "x86_64-linux"; };
    # pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
    modules = [
      {
        nixpkgs.overlays = [
          inputs.nixgl.overlays.default
        ];
        nixpkgs.config.allowUnfree = true;
      }
      inputs.self.modules.homeManager.uhoh
    ];

  };
}
