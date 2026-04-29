{ inputs, ... }: {

  flake.modules.homeManager.base-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      jq
      fzf
      tmux
      tmux-xpanes
      zoxide
      git
      ripgrep
      stow
      emacs
    ];
  };
}
