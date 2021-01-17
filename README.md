# Dotfiles (WIP)
Personal backup of dotfiles and setup notes for Manjaro Linux.

## Table of contents
 - [Installing](#installing)
 - [Preview](#preview)
 - [Packages](#packages)
 - [Keybinds](#keybinds)
 - [Visual Stuido Code](#visual-studio-code)
 - [Docker](#docker)

## Installing

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
stow --no-folding alacritty bash bspwm dunst git neofetch picom polybar rofi starship sxhkd vim xorg
```

## Preview

![](https://raw.githubusercontent.com/bizhub/dotfiles/master/preview.png)

## Packages

```shell
# Starship prompt
curl -fsSL https://starship.rs/install.sh | bash

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

#### Graphical environment
* <kbd>bspwm</kbd>: Window manager
* <kbd>sxhkd</kbd>: Hotkey daemon
* <kbd>polybar</kbd>: Bar (aur)
* <kbd>rofi</kbd>: Program launcher
* <kbd>dunst</kbd>: Notifications
* <kbd>picom</kbd>: Compositor
* <kbd>lightdm</kbd>: Display manager
* <kbd>nitrogen</kbd>: Wallpaper manager

#### Fonts
* <kbd>ttf-cascadia-code</kbd>
* <kbd>ttf-ms-fonts</kbd> (aur)
* <kbd>ttf-font-awesome</kbd>: Icons

#### Development environment
* <kbd>alacritty</kbd>: Terminal emulator
* <kbd>visual-studio-code-bin</kbd>: Code editor (aur)
* <kbd>docker</kbd>
* <kbd>docker-compose</kbd>
* <kbd>dry-bin</kbd>: Terminal docker manager (aur)
* <kbd>tableplus</kbd>: Database gui (aur)
* <kbd>gimp</kbd>
* <kbd>github-cli</kbd>

#### Misc
* <kbd>ranger</kbd>: File explorer
* <kbd>google-chrome</kbd>: Browser (aur)
* <kbd>brave</kbd>: Browser (aur)
* <kbd>redshift</kbd>: Alternative to Flux

## Keybinds
Keybind                | Description
-----------------------|---------------------------------------
<kbd>super+enter</kbd> | Alacritty
<kbd>super+b</kbd>     | Brave
<kbd>super+space</kbd> | Rofi (run)
<kbd>super+r</kbd>     | Ranger
<kbd>super+h</kbd>     | Htop
<kbd>super+d</kbd>     | Discord

## Visual Studio Code
Theme: [Alpenglow Monokai](https://marketplace.visualstudio.com/items?itemName=kaicataldo.alpenglow-monokai)

## Docker
```shell
systemctl enable --now docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```
