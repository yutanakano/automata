#!/bin/sh

sudo gsed -i '$a /usr/local/bin/fish' /etc/shells
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
chsh -s /usr/local/bin/fish
