{ inputs, ... }: {
  
  perSystem = { system, ...}: {

    _module.args.pkgs = import inputs.nixpkgs {
      inherit system;
      overlays = [
        inputs.nixgl.overlay
        (final: prev: {
          ncmpcpp = prev.ncmpcpp.override {
            visualizerSupport = true;
          };
        })
      ];
    };
  };
}
