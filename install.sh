# chmod +wx install.sh

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$DOTFILES_DIR/install/symlinks.sh"

mkdir ~/repos

sudo apt-get update && sudo apt-get install -y \
    curl \
    git \
    openssl
    php-common \
    php-curl \
    php-json \
    php-mbstring \
    php-mysql \
    php-xml \
    php-zip

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

curl -fsSL https://starship.rs/install.sh | bash

source ~/.bashrc