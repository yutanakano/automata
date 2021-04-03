#!/bin/sh

# POSIX非互換を解決する。便利。
fisher install edc/bass
# 過去に訪れたディレクトリに一発で飛べる。便利。
fisher install jethrokuan/z
# ディレクトリを簡単に遡れるやつ。これも便利。
fisher install 0rax/fish-bd
# pecoを利用するために必要なプラグインを追加
fisher install oh-my-fish/plugin-peco
# z コマンドで頻繁に訪れるディレクトリを peco で選択して移動する。
fisher install tsu-nera/fish-peco_recentd
# ghqの補完とキーバインド(Control g)
fisher install decors/fish-ghq
