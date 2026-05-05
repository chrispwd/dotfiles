{ inputs, ... }: {
  
  perSystem = { pkgs, system, ...}: {

    # _module.args.pkgs = import inputs.nixpkgs {
    #   inherit system;
    #   overlays = [
    #     inputs.nixgl.overlay
    #     (final: prev: {
    #       ncmpcpp = prev.ncmpcpp.override {
    #         visualizerSupport = true;
    #       };
    #     })
    #   ];
    # };

    overlayAttrs = {
      
      ncmpcpp = pkgs.ncmpcpp.override {
        visualizerSupport = true;
      };

      nixgl = inputs.nixgl.overlay;
    };
  };
}
