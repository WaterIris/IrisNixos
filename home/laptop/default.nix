{ ... }:
{
  imports = [
    ./modules
  ];

  home = {
    username = "iris";
    homeDirectory = "/home/iris";
  };

  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "25.11";
}
