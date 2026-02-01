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
    udiskie
    libmtp
    file
    epubcheck
    tesseract
    slurp
    grim
    # nixfmt-rfc-style
    # Monitoring
    acpi
    usbutils
    libnotify
    # Gui apps
    vmware-workstation
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
    mpv
    calibre
    planify
    foliate
    # discord
    # Wayland specific
    wl-clipboard
    hyprpicker
    hyprpaper
    hypridle
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
    ty
  ];
}
