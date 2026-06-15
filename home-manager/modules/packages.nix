{
  pkgs,
  inputs,
  ...
}:
let
  pkgs-unstable = import inputs.nixpkgs-unstable {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in
{
  home.packages = with pkgs; [
    # inputs.nixvim.packages.${system}.default # enable nixvim flake
    # Cli apps
    ripgrep # better grep
    fd # better find
    brightnessctl
    discord
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
    btop
    lazygit
    # television
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
    mpv
    calibre
    # baobab
    foliate
    # Wayland specific
    wl-clipboard
    hyprpicker
    hyprpaper
    hypridle
    hyprshot
    hyprlock
    swayfx
    waybar
    #Other
    dunst
    rofi
    neovim
    papirus-icon-theme
    lua-language-server
    tree-sitter
    clang
    luarocks
    nixfmt
    nil
    pkgs-unstable.zed-editor

  ];
}
