{ inputs, withSystem, ... }: {
  
  flake.homeConfigurations = {
    
    uhoh =
      let
      
        pkgs = { config, ... }: {
          nixpkgs.pkgs = withSystem config.nixpkgs.hostPlatform.system (
            { pkgs, ... }: pkgs
          );
        };

      in
      
        inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;      
          modules = [
            inputs.self.modules.homeManager.uhoh
          ];
      
        };
  };
}
