# Dotfiles
Personal backup of dotfiles and setup notes for Arch Linux.

![](https://raw.githubusercontent.com/bizhub/dotfiles/master/preview.png)

## Installing

1. Clone
```shell
git clone https://github.com/bizhub/dotfiles ~/dotfiles
```

2. Stow script
```shell
~/dotfiles/scripts/.local/bin/dotfiles stow
```

## Notes
```shell
cd /usr/share/applications

xdg-mime default qimgv.desktop image/jpeg image/png image/gif
xdg-mime default pcmanfm.desktop inode/directory

xinput list
xinput --set-prop 14 'libinput Accel Speed' -0.7
```

## Todo
- Keybinds
- Applications