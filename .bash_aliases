# Global
alias cls='clear'
alias e.='explorer.exe .'
alias ..='cd ../'
alias ~='cd ~'

# Git
alias gl='git log --oneline --all --graph --decorate'
alias gc='git commit'
alias gp='git push origin'
alias gs='git status -s'
alias ga='git add'
alias gb='git branch'
alias go='git checkout'
alias gt='git tag'
alias gm='git merge'

# Docker compose
alias up='docker-compose up -d'
alias down='docker-compose down'
alias build='docker-compose up -d --build'
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dce='docker-compose exec'

alias a='docker-compose exec webserver php artisan'

# Testing
alias test='docker-compose exec webserver php ./vendor/bin/phpunit'
alias pest='docker-compose exec webserver php ./vendor/bin/pest'
alias pests='docker-compose exec webserver php ./vendor/bin/pest --stop-on-failure'

# Npm
alias watch='npm run watch'
alias dev='npm run dev'
alias production='npm run production'

# WSL
alias wsl='wsl.exe'
