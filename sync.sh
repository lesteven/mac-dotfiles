#!/bin/zsh

cd "$(dirname "$0")"

setopt dotglob #include dotfiles

for file in *; do
    if [ "$file" != "sync.sh" ] && [ "$file" != ".git" ]; then
        rm -rf "/home/$USER/$file"
        ln -sv "$(pwd)/$file" ~ 
    fi
done
