{ pkgs, ...}:
{
   programs.hyprland.enable = true;
   services = {
     udisks2 = {
       enable = true;
       mountOnMedia = true;
       settings = {
         "udisks2.conf" = {
           defaults = {
             encryption = "luks2";
           };
           udisks2 = {
             modules = [ "*" ];
             modules_load_preference = "ondemand";
           };
          };
        };
     };
      xserver = {
        enable = true;
        layout = "us";
	desktopManager.plasma5.enable = true;
        displayManager.sddm.enable = true;
	displayManager.sddm.theme = "chili";
      };
    };
}
