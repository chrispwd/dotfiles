{ inputs, ... }: {

  # shared home-manager settings across all homeManagerConfigurations
  
  flake.modules.homeManager.shared = {
    
    home.stateVersion = "25.11";
  };
}
