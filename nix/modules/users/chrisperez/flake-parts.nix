{ inputs, ... }: {

  flake.homeConfigurations."chrisperez" = inputs.home-manager.lib.homeManagerConfiguration {
    
    pkgs = import inputs.nixpkgs { hostPlatform = "aarch64-darwin"; };
    # pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;
    modules = [
      # ({
      #   nixpkgs.overlays = [
      #     inputs.nixgl.overlays.default
      #   ];
      #   nixpkgs.config.allowUnfree = true;
      # })
      inputs.self.modules.homeManager.chrisperez
    ];

  };
}
