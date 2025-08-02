{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = [ "--all" ];
    extraConfig = "

env = AQ_DRM_DEVICES,/dev/dri/card1

$mainMod = SUPER
bind = $mainMod, Return, exec, kitty
bind = $mainMod SHIFT, Return, exec, codium
bind = $mainMod, Q, killactive, 
bind = $mainMod, M, exec, wlogout --protocol layer-shell
bind = $mainMod, E, exec, thunar
bind = $mainMod, b, exec, librewolf
bind = $mainMod, V, togglefloating, 
bind = $mainMod, D, exec, rofi -show drun
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, S, togglesplit, # dwindle
bind = $mainMod SHIFT, Q, exec, hyprlock
bind = , PRINT, exec, hyprshot -m region --clipboard-only

bind = $mainMod, h, movefocus, l
bind = $mainMod, l, movefocus, r
bind = $mainMod, k, movefocus, u
bind = $mainMod, j, movefocus, d

bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

bind = $mainMod CTRL, l, resizeactive, 10 0
bind = $mainMod CTRL, h, resizeactive, -10 0
bind = $mainMod CTRL, k, resizeactive, 0 -10
bind = $mainMod CTRL, j, resizeactive, 0 10

bind = $mainMod SHIFT, l, movewindow, r
bind = $mainMod SHIFT, h, movewindow, l
bind = $mainMod SHIFT, k, movewindow, u
bind = $mainMod SHIFT, j, movewindow, d

bind = , XF86MonBrightnessUp, exec, brightnessctl -q s +5%
bind = SHIFT, XF86MonBrightnessUp, exec, brightnessctl -q s +1%
bind = , XF86MonBrightnessDown, exec, brightnessctl -q s 5%-
bind = SHIFT, XF86MonBrightnessDown, exec, brightnessctl -q s 1%-
bind = , XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +2%
bind = SHIFT, XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +1%
bind = , XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -2%
bind = SHIFT, XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -1%
bind = , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bind = , XF86AudioPlay, exec, playerctl play-pause
bind = , XF86AudioPause, exec, playerctl pause
bind = , XF86AudioNext, exec, playerctl next
bind = , XF86AudioPrev, exec, playerctl previous
bind = , XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle
bind = ALT, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy # Clipboard Manager

# Screenshot a monitor/output ($mainMod + ALT + P)
bind = CTRL, print, exec, hyprshot -m output -o ~/Pictures/Screenshots

# Screenshot a region ($mainMod + SHIFT + P)
bind = CTRL SHIFT, print, exec, hyprshot -m region -o ~/Pictures/Screenshots

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

exec-once = nm-applet &
exec-once = waybar & hyprpaper
exec-once = swayidle -w
exec-once = dbus-update-activation-environment --systemd --all

monitor = , highres, auto, 1.25

# unscale XWayland
xwayland {
  force_zero_scaling = true
}

# toolkit-specific scale
env = GDK_SCALE,1
env = XCURSOR_SIZE,20

env = QT_QPA_PLATFORM,wayland
env = ELECTRON_OZONE_PLATFORM_HINT,auto

input {
    kb_layout = tr

    kb_variant =
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1

    numlock_by_default = true

    sensitivity = 1.3
    accel_profile = flat

    touchpad {
        natural_scroll = yes
    }

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
}
windowrule = float, file_progress
windowrule = float, confirm
windowrule = float, dialog
windowrule = float, download
windowrule = float, notification
windowrule = float, error
windowrule = float, splash
windowrule = float, confirmreset
windowrule = float, title:Open File
windowrule = float, title:branchdialog
windowrule = float,viewnior
windowrule = float, pavucontrol-qt
windowrule = float, pavucontrol
windowrule = float, file-roller
windowrule = fullscreen, wlogout
windowrule = float, title:wlogout
windowrule = fullscreen, title:wlogout
windowrule = idleinhibit stayfocused, mpv
windowrulev2 = float, title:^(Media viewer)$

# Picture in picture windows
windowrulev2 = float, title:^(Picture-in-Picture)$
windowrulev2 = pin, title:^(Picture-in-Picture)$
windowrulev2 = float, class:^(vesktop)$,title:^(Discord Popout)$ 
windowrulev2 = pin, class:^(vesktop)$,title:^(Discord Popout)$ 
windowrulev2 = float, class:^(steam)$,title:^(Friends List)$


# Workspace assign

# windowrulev2 = workspace: 1, class:^(kitty)$
# windowrulev2 = workspace: 2, class:^(firefox)$
# windowrulev2 = workspace: 5, class:^(steam)$
# windowrulev2 = workspace: 10, class:^(org.telegram.desktop)$
# windowrulev2 = workspace: 10, class:^(vesktop)$
general {
    gaps_in = 5
    gaps_out = 10 
    border_size = 1
    col.active_border = rgb(8aadf4) rgb(24273A) rgb(24273A) rgb(8aadf4) 45deg
    col.inactive_border= rgb(24273A) rgb(24273A) rgb(24273A) rgb(24273A) 45deg    
    layout = dwindle
    allow_tearing = false
}

decoration {
    rounding = 10
    blur {
        enabled = true
        size = 2
        passes = 2
        new_optimizations = true
        xray = false
    }
}

animations {
    enabled = yes
    bezier = overshot, 0.05, 0.9, 0.1, 1.05
    bezier = smoothOut, 0.36, 0, 0.66, -0.56
    bezier = smoothIn, 0.25, 1, 0.5, 1
    animation = windows, 1, 5, overshot, slide
    animation = windowsOut, 1, 4, smoothOut, slide
    animation = windowsMove, 1, 4, default
    animation = border, 1, 10, default
    animation = fade, 1, 10, smoothIn
    animation = fadeDim, 1, 10, smoothIn
    animation = workspaces, 1, 6, default
}

dwindle {
    pseudotile = yes 
    preserve_split = yes 
}

gestures {
    workspace_swipe = off
}

misc {
    force_default_wallpaper = 0
    disable_hyprland_logo = true
    disable_splash_rendering = true
}
";
  };
  home.packages = with pkgs; [
    waybar
    hyprlock
    wlogout
    # mako
    # libnotify
    # hyprpaper
    rofi-wayland
    brightnessctl
    qt5.qtwayland
    qt6.qtwayland
    gvfs
    hyprshot
    networkmanagerapplet
    # xfce.thunar-archive-plugin
    # xfce.thunar-bare
    # xfce.thunar-media-tags-plugin
    # xfce.thunar-vcs-plugin
    # xfce.thunar-volman
  ];
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      kdePackages.xdg-desktop-portal-kde
    ];
  };

  # services.hyprpaper = {
  #   enable = true;
  #   settings = {
  #     ipc = "on";
  #     splash = false;
  #     splash_offset = 2.0;

  #     preload = ["~/system/home/images/gruvbox-dark-blue.png"];

  #     wallpaper = [
  #       ", ~/system/home/images/gruvbox-dark-blue.png"
  #     ];
  #   };
  # };
}