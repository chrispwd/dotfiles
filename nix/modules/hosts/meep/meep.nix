{ self, inputs, ...}: {

  flake.modules = {
    homeManager.charlie = { pkgs, ... }: {
      imports = with self.modules.homeManager; [
        system-base
      ];
    };
  };
}
