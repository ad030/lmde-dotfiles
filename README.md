# My Dotfiles

My personal config on LMDE 6.
Me like linux me like config.

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

### Neovim

Required for some plugins to work:

- `ripgrep`
- `npm`
  - `tree-sitter-cli`
- `python3.11-venv`

For C development:

- `clangd`
- `clang-format` (comes built-in with clangd)

For Java development:

- `openjdk-17-jre`, `openjdk-17-jdk`
  - If using the debug features, must have JDK 21; install from Oracle or OpenJDK
- `google-java-format`
- `java-debug` (must be installed manually)
- `vscode-java-test` (must be installed manually)

For Latex documents:

- `latexmk`
- `texlive`
- `latexindent`
