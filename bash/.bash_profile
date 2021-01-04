#
# ~/.bash_profile
#

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# [[ $(fsconsole 2> /dev/null) == 1 ]] && startx -- vt1