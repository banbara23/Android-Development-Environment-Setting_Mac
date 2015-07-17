#MacでAndroidアプリ開発の環境構築メモ (2015/07/16時点)  
MacにAndroid開発環境を構築するための池村メモ、適宜更新していく予定
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


これは時間かかるので早いうちにインストール開始しておき、他作業を進めるのがおすすめ  

- Android Studioプラグインの導入（必須）
Eclipse Code Formatter：Android Studio で Eclipse のコードフォーマットルールを使えるようにするプラグイン  <br>
Preferences > Plugins > Browse Repository > 検索欄に「Eclipse Code Formatter」と入力すると出てくる

- Android Studioのテーマ導入（任意）  
Preferences > Appearance > Theme をDaucula
一度restartして以下から好きなテーマファイルを取得
http://www.ideacolorthemes.org/home/
Android StudioのFile > Import Settings > テーマファイルを選択

- AndroidStudioで保存時に自動整形+import整理する（必須？）  
http://qiita.com/konifar/items/1f56c82490986d1613a8  
手順作成中

<br>

##Genymotionのインストール
AndroidStudioにもエミュレータはついているが、Genymotionの方が圧倒的に早いのでおすすめ  
（早すぎて実機よりデバッグ効率が良い）

- Virtual Boxのインストール（OS Xを選択）  
https://www.virtualbox.org/wiki/Downloads

- Genymotionのインストール（無料アカウント登録が必要）  
http://nelog.jp/genymotion-install

- GooglePlayにアクセスできるようする<br>
http://nelog.jp/how-to-use-google-play-in-genymotion

<br>

##CommandLineToolのインストール
これを入れることによって色々便利なツールが使えるようになるので、とりあえず入れよう<br>
MacOSがYosemiteでなければ最新コマンドラインツールをインストールできない？ので、可能であればMacを最新にする。  
インストール方法は複数あるが、特別な理由が無い限りXcodeをインストールしておけば間違いない

- 一番簡単な方法  
**AppStoreからXcodeを検索してインストールする**<br>
　少し時間はかかるが一番手っ取り早い  
　インストール後は一度でいいのでXcodeを起動させておく

- コマンドでインストールする場合(未検証)<br>
ターミナルを開いて以下を入力
```
xcode-select --install
```
[参考ページ](http://karabun.hatenablog.com/entry/2015/01/08/073737)

- 自分でバージョンを選んで入れたい場合（要アップルID)  
[Apple Developer Support](https://developer.apple.com/jp/support/xcode/)

<br>

###ここまで導入したらAndroid開発の最低限は満たしているはず。

<br>

#以下はあると便利なツール

###SourceTree  
GitをGUIで操作できるツール、知名度高し  
https://www.atlassian.com/ja/software/sourcetree/overview

###Homebrew  
これはほぼ必須、とりあえず入れておこう  
http://brew.sh

ここからコマンドライン系、よく分からない人はスルーしてOK  

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


Android Studio 設定
以下の設定をして下さい。
設定項目へのパス
設定項目
設定値
Code Style > General
Use tab character
オン
Smart tabs
オン
Code Style > Groovy
Use tab character
オン
Smart tabs
オン
Code Style > HTML
Use tab character
オン
Smart tabs
オン
Code Style > Java
Use tab character
オン
Smart tabs
オン
Code Style > Java > Code Generation > Naming > Name prefix
Field
m
Static field
s
Code Style > XML
Use tab character
オン
Smart tabs
オン
Maven > Importing
Use Maven3 to import project
オフ
Eclipse Code Formatter
※プロジェクトを開いてからの設定画面でのみ項目表示されます
Use the Eclipse code formatter
オン
Eclipse Java Formatter config file
RLS-CodeFormatterProfile.xml
Appearance
Show memory indicator
オン
Editor
Allow placement of caret after end of line
オフ
Editor > Appearance
Show line numbers
オン
Show whitespaces
オン
Editor > Auto Import
Optimize import on the fly
オン
Add unambiguous on the fly
オン
Plugins
CVS Integration
オフ
JavaFX
オフ

##補足
- Android Studioビルド時にJavaバージョンを聞かれたら  
http://idea-cloud.com/dev/jdk_version.html  
Macにプリインストールされているもののディレクトリ  
/System/Library/Java/JavaVirtualMachines/  
Oracleのサイトからダウンロードした場合のディレクトリ  
/Library/Java/JavaVirtualMachines/




##macにあると便利なソフト
- iTerm2：https://www.iterm2.com/  
- Google 日本語入力 - ダウンロード : https://www.google.co.jp/ime/index-mac.html
- Swift - クリップボード拡張Macアプリ「Clipy」を公開しました - Qiita : http://qiita.com/econa77/items/1848bf3fdfb7127ca9b8  
- Atom : https://atom.io/  
http://qiita.com/econa77/items/1848bf3fdfb7127ca9b8
