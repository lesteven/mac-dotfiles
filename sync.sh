#!/bin/zsh

cd "$(dirname "$0")"

# matches every file in dir
#shopt -s dotglob

for file in *; do
    if [ "$file" != "sync.sh" ] && [ "$file" != ".git" ]; then
        rm "/home/$USER/$file" -rf
        ln -sv "$(pwd)/$file" ~ 
    fi
done
