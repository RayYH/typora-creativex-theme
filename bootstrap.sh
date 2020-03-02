#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")" || return

git pull origin master

THEME_FOLDER=~/Library/Application\ Support/abnerworks.Typora/themes

if [ -d "$THEME_FOLDER" ]; then
    rsync --exclude ".git/" \
        --exclude "images" \
        --exclude "demo.md" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . "$THEME_FOLDER"
        echo "done"
else
    echo "Theme folder $THEME_FOLDER not exists, open typora and check preferences."
fi
