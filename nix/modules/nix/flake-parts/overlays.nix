{ inputs, ... }: {
  
#   perSystem = { system, pkgs, ...}: {

#     _module.args.pkgs = import inputs.nixpkgs {
#       inherit system;
#       overlays = [
#         inputs.nixgl.overlay
#         # (final: prev: {
#         #   ncmpcpp = prev.ncmpcpp.override {
#         #     visualizerSupport = true;
#         #   };
#         # })
#       ];
#       config = {
#         allowUnfree = true;
#       };
#     };

#   #   overlayAttrs = {
      
#   #     ncmpcpp = pkgs.ncmpcpp.override {
#   #       visualizerSupport = true;
#   #     };
#   #   };
#   };

    perSystem = { system, ... }: {
    _module.args.pkgs = import inputs.nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
      overlays = [
        # nesting nixpkgs-unstable within pkgs
        (final: prev: {
          unstable = import inputs.nixpkgs-unstable {
            inherit system;
            config = {
              allowUnfree = true;
            };
          };
        })
      ];
    };
  };
}
