#MacでAndroidアプリ開発の環境構築メモ 
MacにAndroid開発環境を構築するための池村メモ 2015/07/22更新
<br><br>

##JDKインストール
- Java 6 インストール  
Java for OS X 2014-001：http://support.apple.com/kb/DL1572

- Java 7 or 8  
[Java Downloads](http://www.oracle.com/technetwork/java/javase/downloads/index.html)からJDKを入れる。
(自分は7u75を入れたが最新の8でいいかも)

<br>

##Android Studioのインストール
- 下記リンクからDonload Android Studio for Macを選んでダウンロードしてインストール
http://developer.android.com/sdk/index.html

- Android SDK Managerを起動してInstall or Update  
(時間がかなりかかるので早いうちにインストール開始しておき、他作業を進めるのがおすすめ）<br>
以下、自分の環境にインストール済みリスト

```
Tools
Android SDK Tools
Android SDK Platform-tools
Android SDK Build-tools全て

Android M (API 22)
から
Android 4.0 (API 14)
までのSDK Platformだけ

Extras
Android Support Repository
Android Support Library
Google Repository
```

####Android Studioプラグインの導入
- Eclipse Code Formatter：Android Studio でコードフォーマットルールを使える（必須）
- Android Postfix Completion：[凄く便利](http://qiita.com/takahirom/items/ac1d1b08351610dfcc43) (任意）
- プラグインの導入方法
    - Preferences > Plugins > Browse Repository > 検索欄にプラグイン名を入力 > 入れたいプラグインを選択 > 右欄のInstallボタンをおす

####AndroidStudioで保存時に自動整形+import整理する（ほぼ必須）  
http://qiita.com/konifar/items/1f56c82490986d1613a8<br>
手順作成中

####Android Studioのテーマ導入（任意）  
Preferences > Appearance > Theme をDaucula<br>
一度restartして以下から好きなテーマファイルを取得<br>
http://www.ideacolorthemes.org/home/<br>
Android StudioのFile > Import Settings > テーマファイルを選択

<br>

##Genymotionのインストール
AndroidStudioにもエミュレータはついているが、Genymotionの方が圧倒的に早いのでおすすめ  
（早すぎて実機よりデバッグ効率が良い）

- Virtual Boxのインストール（OS Xを選択）  
https://www.virtualbox.org/wiki/Downloads

- Genymotionのインストール（無料アカウント登録が必要）  
http://nelog.jp/genymotion-install

- GooglePlayにアクセスできるようする(必須ではないが後々必要になるかも)<br>
http://nelog.jp/how-to-use-google-play-in-genymotion

<br>

##CommandLineToolのインストール
入れることによって色々便利なツールが使えるようになるので損はない<br>
MacのOSが最新でなければインストールできない事もあるので、可能であればAppStoreから最新にする。<br>
インストール方法はいくつかあるが、Xcodeをインストールしておけば間違いない<br>

- 一番簡単な方法  
**AppStoreからXcodeを検索してインストールする** (要Apple ID)<br>
　少し時間はかかるが一番手っ取り早い<br>
　インストール後は一度でいいのでXcodeを起動させておく

- コマンドでインストールする場合(未検証)<br>
ターミナルを開いて以下を入力
```
xcode-select --install
```
[参考ページ](http://karabun.hatenablog.com/entry/2015/01/08/073737)

- 自分でバージョンを選んで入れたい場合 (要Apple ID)  
[Apple Developer Support](https://developer.apple.com/jp/support/xcode/)

<br>

###ここまで導入したらAndroid開発の最低限は満たしているはず。

<br>

#あると便利な開発ツール

###SourceTree  
GitをGUIで操作できるツール、知名度高し  
https://www.atlassian.com/ja/software/sourcetree/overview

###Atom
Github発のテキストブラウザ、マークダウンのプレビューが凄く便利<br>
https://atom.io/

###iTerm2
多機能ターミナル、タブ使えるだけで作業が捗る<br>
https://www.iterm2.com/

---
ここからコマンドライン系、よく分からない人はスルーしてOK  

###Homebrew  
ソフトウェアの導入を単純化するパッケージ管理システム<br>
http://brew.sh

- zsh  
bashが物足りない方へ  
http://qiita.com/shinofara/items/802e282dbc3d2e36e2a1

- oh-my-zsh  
zshの設定が面倒な方へ  
http://qiita.com/udzura/items/0d08d71d809bfd8c5981


- .oh-my-zshのテーマ  
http://qiita.com/udzura/items/0d08d71d809bfd8c5981#2-5
個人的に、gozilla,
apple,
eastwood,
miloshadzic
あたりが気に入った

brewのtree,caskあたりも興味あり<br>
slはネタ<br>
<br>

.bash_profileを作成して以下を追加
```
if [[ -s /bin/zsh ]] ; then
    exec /bin/zsh
else
  if [[ -s ~/.bashrc ]] ; then
    . ~/.bashrc
  fi
fi
```

<br>
bashrcを作成してadbパスを通す
```
echo 'export PATH=$PATH:$/Users/ikemurakazutaka/Library/Android/sdk/platform-tools' >> ~/.bashrc;source .bashrc

.zshrcを作成してbashrcを読み込む
if [[ -s ~/.bashrc ]] ; then
  . ~/.bashrc
fi
```

<br>

- tigのインストール
Gitを使いやすくするツール、愛用している  
```
brew install tig
```
http://qiita.com/suino/items/b0dae7e00bd7165f79ea
http://qiita.com/KENJU/items/13313429df707fecfadf

<br>

##macをAndroidStudio用に設定する
(ここは作成中)  

macのシステム設定　＞　キーボード　＞　F1、F2などのすべてのキーを標準ファンクションキーとして使用のチェックを入れる


##Android Studio 設定
ある程度作成した (2015/07/22)

```
右上のAndroid Studio > Preferences... を選択して設定画面を開く

・ゲッター・セッター生成時にPrefixやSuffixを除く
Editor > General > Code Style > Java > Code Generation > Naming > Name prefix
Prefer longer names オン
Field に m を入力
Static field に s を入力
（suffixは空欄でOK）

Editor > General > Appearance
・行番号表示
Editor > General > Appearance > Show line numbers チェックオン
・スペース等の表示
Editor > General > Appearance > Show whitespaces チェックオン
・エディター内に表示されている縦線を非表示
Editor > General > Appearance > Show right margin (configured in Code Style options) のチェックを外す。
・自動インポート
Editor > General > Auto Import > Optimize import on the fly オン
Editor > General > Auto Import > Add unambiguous on the fly オン


Eclipse Code Formatterをインストールした後、
フォーマット.xmlファイルをダウンロードしてある状態で
Other Settings > Eclipse Code Formatter
  Use the Eclipse code formatter を選択してON
  Eclipse Java Formatter config file の[Browse...]を押下して小窓からフォーマット.xmlを選択してOK

Todo:自動フォーマット設定
```

##補足
- Android Studioビルド時にJavaバージョンを聞かれたら  
http://idea-cloud.com/dev/jdk_version.html  
Macにプリインストールされているもののディレクトリ  
/System/Library/Java/JavaVirtualMachines/  
Oracleのサイトからダウンロードした場合のディレクトリ  
/Library/Java/JavaVirtualMachines/




##macにあると便利なソフト
- Google 日本語入力 - ダウンロード : https://www.google.co.jp/ime/index-mac.html
- Clipy : http://qiita.com/econa77/items/1848bf3fdfb7127ca9b8  
http://qiita.com/econa77/items/1848bf3fdfb7127ca9b8
