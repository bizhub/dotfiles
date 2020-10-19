# General
alias cls='clear'
alias e.='explorer.exe .'
alias ..='cd ../'
alias ...='cd ../..'
alias ll='ls -alF --group-directories-first'

alias myip="curl http://ipecho.net/plain; echo"
alias fhere="find . -name "

mkd () {
    mkdir -p $1
    cd $1
}

# Git
alias gl='git log --oneline --graph --decorate -10'
alias gla='git log --oneline --graph --decorate --all'
alias gc='git commit'
alias gp='git push origin'
alias gs='git status -s'
alias ga='git add'
alias gb='git branch'
alias go='git checkout'
alias gt='git tag'
alias gm='git merge'
alias gd='git diff'

# Docker
alias dps='docker ps -a'

# Docker compose
alias up='docker-compose up -d'
alias down='docker-compose down'
alias build='docker-compose up -d --build'
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dce='docker-compose exec'

# Artisan
alias a='php artisan'
alias fresh='docker-compose exec webserver php artisan migrate:refresh --seed'
alias seed='docker-compose exec webserver php artisan db:seed'
alias migrate="docker-compose exec webserver php artisan migrate"

# Testing
alias test='docker-compose exec webserver php ./vendor/bin/phpunit'
alias pest='docker-compose exec webserver php ./vendor/bin/pest'
alias pests='docker-compose exec webserver php ./vendor/bin/pest --stop-on-failure'

# Npm
alias watch='npm run watch'
alias dev='npm run dev'
alias production='npm run production'

# Windows
alias wsl='wsl.exe'
alias choco='choco.exe'

