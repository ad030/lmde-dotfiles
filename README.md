# My Dotfiles

My personal config on LMDE 7.

## What I Use

- Rofi
- Neovim
- Zathura
- udiskie (to auto mount hard drives)
- For X11:
  - wezterm (terminal emulator)
  - i3 (window manager)
  - polybar (status bar)
  - picom (compositor)
- For Wayland:
  - foot (terminal emulator)
  - grim (screenshot tool)
  - slurp (screen select tool)
  - sway (compositor)
  - waybar (bar)
  - wl-clipboard

Linux Mint does not currently work perfectly with Wayland, likewise with NVIDIA proprietary drivers and Sway.
My dotfiles include both my X11 and Wayland configs.

## Dependencies

- `Jetbrains Mono` font
- `font-awesome` font
- Neovim 0.10.0+

## Cloning

I store all my config files in the directory `~/dotfiles/`, and create symlinks to `$HOME` and `$HOME/.config` to these files.
