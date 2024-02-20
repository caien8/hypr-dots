{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = "eDP-1,1920x1080,0x0,1";
      exec-once = [
        "waybar"
        "hyprpaper"
        "udiskie"
      ];
      source = [
        "~/.config/hypr/modules/general.conf"
        "~/.config/hypr/modules/decoration.conf"
        "~/.config/hypr/modules/animations.conf"
        "~/.config/hypr/modules/input.conf"
        "~/.config/hypr/modules/misc.conf"
        "~/.config/hypr/modules/keybinds.conf"
      ];
      env = "XCURSOR_SIZE,26";

    };
  };
}