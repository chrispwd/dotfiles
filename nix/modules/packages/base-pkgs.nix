{ inputs, ... }: {

  flake.modules.homeManager.base-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      emacs
      fastfetch
      fzf
      git
      gnupg
      htop-vim
      jq
      lsd
      pass
      ripgrep
      stow
      tmux
      tmux-xpanes
      vim
      zoxide
    ];
  };
}
