{ inputs, ... }: {

  flake.modules.homeManager.music-pkgs = { pkgs, ... }: {

    home.packages = with pkgs; [
      mpd
      ncmpcpp
    ];
  };
}
