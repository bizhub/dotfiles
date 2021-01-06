# Dotfiles (WIP)
Dotfiles and setup notes

## Table of contents
 - [Installing](#installing)
 - [Previews](#preview)
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

3. Install all modules
```shell
cd ~/dotfiles
stow alacritty bash bspwm dunst git neofetch polybar rofi starship sxhkd xorg
```

# Preview

![](https://raw.githubusercontent.com/bizhub/dotfiles/master/preview.png)

# Packages

```shell
# Yay
sudo git clone https://aur.archlinux.org/yay-git
cd yay-git
makepkg -si

# Starship prompt
curl -fsSL https://starship.rs/install.sh | bash

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

## Pacman
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
* rofi-pass
* gimp
* numlockx
* lightdm
* lightdm-webkit2-greeter

## Yay (aur)
* lightdm-webkit-theme-aether
* polybar
* visual-studio-code-bin
* google-chrome
* tableplus
* ttf-ms-fonts
* megasync-nopdfium

# Aliases

# Keybinds
Keybinding           | Description
---------------------|---------------------------------------
<kbd>super+b</kbd>   | Chrome browser

# Visual Studio Code

# Docker
```shell
systemctl start docker
systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```