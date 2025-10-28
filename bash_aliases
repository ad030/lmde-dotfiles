# alias to add confirmation prompts
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias ln='ln -iv'

# improve ls command
alias ls='ls -shN --color=auto --group-directories-first'

# open neovim instead of vim
alias vim='nvim'

# always show gcc warnings
alias gcc='gcc -Wall -Wextra -pedantic'

# list process cpu and ram info
alias ram='ps axch -o cmd:15,%mem --sort=-%mem | head'
alias cpu='ps axch -o cmd:15,%cpu --sort=-%cpu | head'

# alias to update apt packages
# alias aptupdate='sudo apt update && sudo apt upgrade -y && sudo apt autoclean && sudo apt autoremove'

# aliases for moving back through directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# alias for .dotfiles bare repository
# alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# alias for getting computer info
alias computerinfo="inxi -Fxzd"

# alias for updating repos and flatpak software
alias sysupdate="$HOME/lmde-dotfiles/scripts/system-update.sh"

