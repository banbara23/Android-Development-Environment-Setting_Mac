//録画スタート
//
//adb shell screenrecord /sdcard/output.mp4 --size 540x960
// ctrl + C で録画停止
// 以下でmp4からgifに変換
cd Movies
adb pull /sdcard/output.mp4
adb shell rm /sdcard/output.mp4

// リネーム用
DATE=`date +"%Y-%m-%d-%H-%M-%S"`
RENAME="${DATE}.gif"
//mv output.gif "${RENAME}"

// gifに変換
ffmpeg -i output.mp4 -an -r 15 -pix_fmt rgb24 -s 540x960 -f gif "${RENAME}"

// ディレクトリを開く
open .