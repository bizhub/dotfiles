#
# ~/.zprofile
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
   startx ~/.config/X11/xinitrc 
fi
