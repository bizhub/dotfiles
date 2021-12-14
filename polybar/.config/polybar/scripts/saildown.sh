#!/bin/bash

sailid=$(docker ps -a | grep sail | sed 's/\s.*$//')
sailpath=$(docker inspect $sailid | sed -n 's|.*"com\.docker\.compose\.project\.working_dir": "\([^"]*\)".*|\1|p')

cd $sailpath
"$sailpath/vendor/bin/sail" down

dunstify -i " " "Docker Compose" "Removed: $sailpath"
