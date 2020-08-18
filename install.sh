# chmod +wx install.sh

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$DOTFILES_DIR/install/symlinks.sh"