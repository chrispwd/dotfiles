{ inputs, ... }: {

  flake.modules.homeManager.programming-pkgs = { pkgs, ... }: {
      
    home.packages = with pkgs; [
      bash-language-server
      cmake
      fnm
      nixd
      typescript-language-server
      jdt-language-server
    ];
  };
}
