# Dotfiles (WIP)
Dotfiles and setup notes
* OS : Manjaro Linux
* WM : bspwm
* Shell : Bash
* Terminal : Alacritty
* Notify Daemon : Dunst
* Compositor : Picom
* Bar : Polybar

## Table of contents
 - [Installing](#installing)
 - [Preview](#preview)
 - [Packages](#packages)
 - [Keybinds](#keybinds)
 - [Docker](#docker)

# Installing

1. Clone
```shell
git clone https://github.com/bizhub/dotfiles ~/dotfiles
```

2. Install GNU Stow
```shell
sudo pacman -S stow
```

3. Install required modules
```shell
cd ~/dotfiles
stow --no-folding alacritty bash bspwm dunst git neofetch polybar rofi starship sxhkd xorg
```

# Preview

![](https://raw.githubusercontent.com/bizhub/dotfiles/master/preview.png)

# Packages

```shell
# Starship prompt
curl -fsSL https://starship.rs/install.sh | bash

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

## Pacman
* yay
* ttf-font-awesome
* ttf-cascadia-code
* git
* xorg
* xorg-xinit
* alacritty
* bspwm
* sxhkd
* firefox
* htop
* stow
* rofi
* nitrogen
* picom
* neofetch
* vim
* nano
* discord
* dunst
* docker
* docker-compose
* vlc
* timeshift
* redshift
* thunderbird
* ranger
* php
* qbittorrent
* keepassxc
* gufw
* filezilla
* pass
* gimp
* numlockx
* lightdm
* lightdm-webkit2-greeter
* dry-bin
* github-cli

## Yay (aur)
* lightdm-webkit-theme-aether
* polybar
* visual-studio-code-bin
* google-chrome
* tableplus
* ttf-ms-fonts
* megasync-nopdfium

# Keybinds
Keybind                | Description
-----------------------|---------------------------------------
<kbd>super+enter</kbd> | Alacritty
<kbd>super+b</kbd>     | Chrome browser
<kbd>super+space</kbd> | Rofi (run)
<kbd>super+r</kbd>     | Ranger
<kbd>super+h</kbd>     | Htop

# Visual Studio Code

# Docker
```shell
systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```