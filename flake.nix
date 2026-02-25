# SPDX-FileCopyrightText: 2023 Jade Lovelace
#
# SPDX-License-Identifier: CC0-1.0

{
  description = "Basic usage of flakey-profile";

  inputs = {
    flakey-profile.url = "github:lf-/flakey-profile";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixgl.url = "github:nix-community/nixGL";
  };

  outputs = { self, nixgl, nixpkgs, flake-utils, flakey-profile  }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        ncmpcppWithVisualizer = final: prev: {
          ncmpcpp = prev.ncmpcpp.override {
            visualizerSupport = true;
            boost = pkgs.boost187;
          };
        };
        
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            ncmpcppWithVisualizer
            nixgl.overlay
          ];
        };

        # for all machines
        basePkgs = [
          pkgs.asciiquarium
          pkgs.pipes
          pkgs.stow
          pkgs.tmux
          pkgs.tmux-xpanes
          pkgs.zoxide
          pkgs.fastfetch
          pkgs.fzf
          pkgs.git
          pkgs.emacs
          pkgs.vim
          pkgs.fnm
          pkgs.phpactor
          pkgs.php85Packages.composer
          pkgs.pass
          pkgs.ripgrep
          pkgs.figlet
          pkgs.ffmpeg
          pkgs.nixd
        ];

        # macOS only
        darwinPkgs = [
          pkgs.lavat
          pkgs.k9s
        ];

        # linux only
        linuxPkgs = [
          pkgs.mpd
          pkgs.ncmpcpp
          pkgs.nsxiv
          pkgs.dmenu
          pkgs.zathura
          pkgs.yt-dlp
          pkgs.mpv
        ];

        # pkgs for specific systems
        # TODO: package my st by hand
        meepPkgs = [];
        
        stinkyPkgs = [
          pkgs.kitty
          pkgs.bash-language-server
          pkgs.nixgl.nixGLIntel
        ];

        macPkgs = [
          pkgs.kitty
          pkgs.bash-language-server
        ];
        
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
        packages.meepProfile = flakey-profile.lib.mkProfile {
          inherit pkgs;
          name = "meep-profile";
          # Specifies things to pin in the flake registry and in NIX_PATH.
          pinned = { nixpkgs = toString nixpkgs; };
          paths = basePkgs ++ linuxPkgs ++ meepPkgs;
        };

        packages.stinkyProfile = flakey-profile.lib.mkProfile {
          inherit pkgs;
          name = "stinky-profile";
          # Specifies things to pin in the flake registry and in NIX_PATH.
          pinned = { nixpkgs = toString nixpkgs; };
          paths = basePkgs ++ linuxPkgs ++ stinkyPkgs;
        };

        packages.macProfile = flakey-profile.lib.mkProfile {
          inherit pkgs;
          name = "mac-profile";
          # Specifies things to pin in the flake registry and in NIX_PATH.
          pinned = { nixpkgs = toString nixpkgs; };
          paths = basePkgs ++ darwinPkgs ++ macPkgs;
        };

      });
}
