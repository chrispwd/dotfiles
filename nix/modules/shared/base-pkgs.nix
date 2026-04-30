{ inputs, ... }: {

  flake.modules.homeManager.base-pkgs = { pkgs, ... }: {
    
    home.packages = with pkgs; [
      asciiquarium
      cowsay
      emacs
      fastfetch
      figlet
      fortune
      fzf
      git
      htop-vim
      jq
      lavat
      nixd
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
