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

# Windows
alias wsl='wsl.exe'
alias choco='choco.exe'

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
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dce='docker-compose exec'

# Laravel Sail
alias sail='./vendor/bin/sail'
alias up='./vendor/bin/sail up -d'
alias down='./vendor/bin/sail down'
alias build='./vendor/bin/sail up -d --build'

# Artisan
alias a='./vendor/bin/sail artisan'
alias fresh='./vendor/bin/sail artisan migrate:refresh --seed'
alias migrate="./vendor/bin/sail artisan migrate"
alias seed='./vendor/bin/sail artisan db:seed'
alias test='./vendor/bin/sail artisan test'

# Npm
alias watch='./vendor/bin/sail npm run watch'
alias dev='./vendor/bin/sail npm run dev'
alias production='./vendor/bin/sail npm run production'