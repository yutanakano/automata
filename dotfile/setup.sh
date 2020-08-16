#!/bin/sh

cd `dirname $0`
scriptPath=`pwd`

# ssh
ln -nfs $scriptPath/.ssh/config ~/.ssh/config
# fish
ln -nfs $scriptPath/.config/fish/config.fish ~/.config/fish/config.fish
# .gitconfig
ln -nfs $scriptPath/.gitconfig ~/.gitconfig
# .vuerc
ln -nfs $scriptPath/.vuerc ~/.vuerc
# .vimrc
ln -nfs $scriptPath/.vimrc ~/.vimrc
# .npmrc
ln -nfs $scriptPath/.npmrc ~/.npmrc

echo "Done."
