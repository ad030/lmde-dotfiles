# My Dotfiles

My personal config on LMDE 6.

## What I Use

- i3
- Polybar
- Picom
- Wezterm
- Rofi
- Neovim

## Dependencies

- `Meslo LGM Nerd Font Mono` font
- `Jetbrains Mono` font
- `font-awesome` font
- Neovim 0.10.0+

## Cloning

I use the method of tracking my dotfiles described on the [Arch Wiki](wiki.archlinux.org/title/Dotfiles#Tracking_dotfiles_directly_with_Git).

For future me to clone onto a new device, run the following commands:

```bash
git clone --bare git@github.com:ad030/.dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}
dotfiles config --local status.showUntrackedFiles no
```
