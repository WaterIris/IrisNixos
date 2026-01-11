{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    # inputs.nixvim.packages.${system}.default # enable nixvim flake
    # Cli apps
    ripgrep # better grep
    fd # better find
    brightnessctl
    zip
    unzip
    fastfetch
    tmux
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
    onlyoffice-desktopeditors
    wezterm
    kitty
    qbittorrent
    # Wayland specific
    wl-clipboard
    hyprpicker
    hyprpaper
    hyprshot
    hyprlock
    waybar
    #Other
    dunst
    rofi
    # eww
    # Neovim
    neovim
    papirus-icon-theme
    lua-language-server
    tree-sitter
    clang
    luarocks
    ruff
    basedpyright
  ];
}
