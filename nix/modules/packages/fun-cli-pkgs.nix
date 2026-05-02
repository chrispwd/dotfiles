{ inputs, ... }: {

  flake.modules.homeManager.fun-cli-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      asciiquarium
      cowsay
      figlet
      fortune
      lavat
      lolcat
      pipes
    ];
  };
}
