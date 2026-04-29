{ inputs, ... }: {

  # common settings across all homeManagerConfigurations
  
  flake.modules.homeManager.common = {
    
    home.stateVersion = "25.11";
  };
}
