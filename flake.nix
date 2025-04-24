{
  description = "Manage installed packages";

  inputs = {
    # Common flake utilities
    flake-utils.url = "github:numtide/flake-utils";

    # Our package sources. I want some packages from a stable release and some to up-to-date.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # It could be that we need to install a specific version of a package.
    # Some package definitions let you pick the right version.
    # See `nodejs` for example: https://search.nixos.org/packages?channel=23.05&query=nodejs
    # You can pick `nodejs_20`, `nodejs_18` or `nodejs_16`.
    # This is very helpful but sometimes not enough.
    # You can use https://www.nixhub.io/ to find the commit reference that introduced the version.
    # nixpkgs-go-1_19.url = "github:NixOS/nixpkgs/8ba120420fbdd9bd35b3a5366fa0206d8c99ade3";
  };

  outputs = { self, flake-utils, nixpkgs, nixpkgs-unstable, ... }:
    # In previous flakes we hardcoded the current system. flake-utils exports a
    # function that lets us define our packages for all systems.
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

        # Define the list of packages we want to be present on the system here.
        deps = [
          # A simple package list of absolute essentials to start
          pkgs.asciiquarium
          #libgccjit derivation failing. need to try another way
          #pkgs-unstable.emacs
          pkgs.pipes
          pkgs.stow
          pkgs.tmux
          pkgs.tmux-xpanes
          pkgs.zoxide
        ];

      in
      {
        # Combine all packages together to return a single derivation.
        # Install locally with `nix profile install .`
        packages.default = pkgs.symlinkJoin {
          name = "my-packages";
          paths = deps;
        };

        # Let's say you want your collegue to run the project but they don't want
        # to install anything globally.
        # `nix develop` let's you start a new shell with all the packages present
        # in the environment.
        devShells.default = pkgs.mkShell {
          buildInputs = deps;
        };

        # Format with `nix fmt`
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
