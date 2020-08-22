# chmod +wx install.sh

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$DOTFILES_DIR/install/symlinks.sh"

# TODO:
# sudo apt install openssl php-common php-curl php-json php-mbstring php-mysql php-xml php-zip