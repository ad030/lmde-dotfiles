# My Dotfiles

My personal config on LMDE 6.

## What I Use

- Wezterm
- Rofi
- Neovim

Using X11:
- i3
  - i3lock-fancy
- Polybar
- Picom

Or using Wayland:
- sway (and swaybar)

## Dependencies

- `Jetbrains Mono` font
- `font-awesome` font
- Neovim 0.10.0+

## Cloning

I use the method of tracking dotfiles described on the [Arch Wiki](wiki.archlinux.org/title/Dotfiles#Tracking_dotfiles_directly_with_Git).

To clone onto a new device, run the following commands:

```bash
$ git clone --bare https://github.com/ad030/.dotfiles.git $HOME/.dotfiles
$ alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
$ mkdir -p .dotfiles-backup && \
  dotfiles checkout 2>&1 | egrep "\s\." | awk {'print $1'} | \
  xargs -I{} mv {} .dotfiles-backup/{}
$ dotfiles config --local status.showUntrackedFiles no
```

Alternatively, replace the third line with `dotfiles checkout -f`.
This overwrites existing dotfiles (such as .bashrc and .bash_aliases) without copying them to a separate file.


