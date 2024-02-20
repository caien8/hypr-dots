{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.caien = {
    isNormalUser = true;
    description = "caien";
    extraGroups = [ "networkmanager" "wheel" "libvirtd"];
    packages = with pkgs; [];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     neovim 
     wget
     kitty 
     git
     vscodium
     udiskie
     nix-prefetch-git
     libsForQt5.qtstyleplugin-kvantum
     sddm-chili-theme
     #home-manager
     home-manager
     # virtualization
     qemu
     qemu_kvm
     libvirt
     virt-manager
  ];

   environment.variables = {
     # This will become a global environment variable
      "QT_STYLE_OVERRIDE"="kvantum";
       QT_QPA_PLATFORMTHEME = "qt5ct";

   };

  # VIRTUALIZATION
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;

}
