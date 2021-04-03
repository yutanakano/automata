# anyenvのpathを通す
eval (anyenv init - | source)

# direnvのpathを通す
eval (direnv hook fish)

#fisherパッケージdecors/fish-ghqの設定
set GHQ_SELECTOR peco

# flutterのpathを通す
set -x PATH $HOME/Repository/github.com/flutter/flutter/bin $PATH

#-- AndroidStudioのpathを通す
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH

set --export JAVA_HOME /Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home;
set -gx PATH $JAVA_HOME/bin $PATH;
#--

# キーバインドの設定
function fish_user_key_bindings
  # pecoでhistoryをインクリメンタルに検索できるやつ。便利すぎる。
  bind \cr 'peco_select_history (commandline -b)'
  # pecoのhistoryのインクリメンタル検索をkill
  bind \cx\ck peco_kill
  # z コマンドで頻繁に訪れるディレクトリを peco で選択して移動する。
  bind \cx\cr peco_recentd
end
