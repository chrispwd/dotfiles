# SPDX-FileCopyrightText: 2023 Jade Lovelace
#
# SPDX-License-Identifier: CC0-1.0

{
  description = "Basic usage of flakey-profile";

  inputs = {
    flakey-profile.url = "github:lf-/flakey-profile";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    yt-x.url = "github:Benexl/yt-x";
  };

  outputs = { self, nixpkgs, flake-utils, flakey-profile, yt-x }: #, yt-x
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        pkgs-other = {
          yt-x = yt-x.packages.${system}.default;        
        };

        deps = system:
          let
            # for both linux and darwin
            basePkgs = [
              pkgs.asciiquarium
              pkgs.pipes
              pkgs.stow
              pkgs.tmux
              pkgs.tmux-xpanes
              pkgs.zoxide
              pkgs-other.yt-x
            ];

            darwinOnly = if pkgs.stdenv.isDarwin then
              []
            else
              [];

            linuxOnly = if pkgs.stdenv.isLinux then
              [
                pkgs.qbittorrent
                pkgs.mpd
                pkgs.ncmpcpp
                pkgs.nicotine-plus
                pkgs.nsxiv
              ]
            else
              [];
            
          in basePkgs ++ darwinOnly ++ linuxOnly;
        
      in
      {
        # Any extra arguments to mkProfile are forwarded directly to pkgs.buildEnv.
        #
        # Usage:
        # Switch to this flake:
        #   nix run .#profile.switch
        # Revert a profile change (note: does not revert pins):
        #   nix run .#profile.rollback
        # Build, without switching:
        #   nix build .#profile
        # Pin nixpkgs in the flake registry and in NIX_PATH, so that
        # `nix run nixpkgs#hello` and `nix-shell -p hello --run hello` will
        # resolve to the same hello as below [should probably be run as root, see README caveats]:
        #   sudo nix run .#profile.pin
        packages.profile = flakey-profile.lib.mkProfile {
          inherit pkgs;
          # Specifies things to pin in the flake registry and in NIX_PATH.
          pinned = { nixpkgs = toString nixpkgs; };
          paths = deps system;
        };
      });
}
