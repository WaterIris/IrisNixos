{ ... }:
{
  programs.bash = {
    enable = true;
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        sway --unsupported-gpu  
      fi
    '';
  };
}
