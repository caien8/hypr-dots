{ config, pkgs, ... }:
{
  imports = [
    ./modules/themes
    ./modules/apps
    ./config/wofi
    ./config/waybar
    ./config/hypr
  ];
  home.username = "caien";
  home.homeDirectory = "/home/caien";
  home.packages = with pkgs; [
    bat
    brightnessctl
    brave
    htop
    tree
    vscodium
    librewolf
    xfce.thunar
    dunst
    pavucontrol
    pulseaudio
    wofi
    hyprpaper
  ];
  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
    XCURSOR_THEME = "Bibata-Modern-Classic";
  };

  nixpkgs.overlays = [
    (self: super:
    {
      bluej = super.bluej.overrideAttrs (oldAttrs: rec{
        src = super.fetchFromGitHub {
          owner = "k-pet-group";
          repo = "BlueJ-Greenfoot";
          rev = "6ed50f4ec5e1658414b7529007b2c133993dd2f6";
          sha256 = "058c6jqfzybdfr3y22xda8gzpzaa8v1nf2abwn92s1rk9c76rwk1";
        };
      });
    })
  ];
 

  services = {
     udiskie = {
     enable = true;
      automount = true;
      notify = true;
      tray = "auto";
    };
  };  

  home.stateVersion = "23.11"; 
  programs.home-manager.enable = true;
}
