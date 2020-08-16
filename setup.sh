#!/bin/sh

# Repositoryを作成
mkdir ~/Repository

# homebrew
sh homebrew/brew/init.sh

# shell
sh shell/fish/init.sh
sh shell/fish/plugin.sh

# anyenv
sh anyenv/init.sh
sh anyenv/setup.sh

# dotfile
sh dotfile/setup.sh

# shellを再起動
exec fish -l

echo "Please open a new session"
