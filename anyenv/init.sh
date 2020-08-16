  
#!/bin/sh

# マニフェストの初期設定
anyenv install --init

# envを追加するディレクトリを追加
mkdir -p (anyenv root)/envs

# pluginを追加するディレクトリを追加
mkdir -p (anyenv root)/plugins

# envを一括アップデートするpluginを追加
ghq get znz/anyenv-update
ln -s ~/Repository/github.com/znz/anyenv-update  (anyenv root)/plugins/

# anyenv update
anyenv update
