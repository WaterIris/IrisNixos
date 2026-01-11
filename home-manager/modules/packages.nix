{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    # inputs.nixvim.packages.${system}.default # enable nixvim flake
    # Terminal apps
    ripgrep # better grep
    fd # better find
    brightnessctl
    zip
    unzip
    fastfetch
    # nixfmt-rfc-style
    # Monitoring
    acpi
    usbutils
    libnotify
    # Gui apps
    firefox
    pavucontrol
    blueman
    obsidian
    nemo
    eog
    networkmanagerapplet
    # Wayland specific
    wl-clipboard
    hyprpicker
    hyprpaper
    hyprshot
    hyprlock
    dunst
    waybar
    rofi
    wezterm
    kitty
    tmux
    onlyoffice-desktopeditors
    neovim
    papirus-icon-theme
    # zed-editor-fhs
    #lsps
    lua-language-server
    tree-sitter
    clang
    luarocks
    ruff
    basedpyright
  ];
}
