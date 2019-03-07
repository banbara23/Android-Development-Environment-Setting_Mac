#!/bin/bash

DATE=`date +"%Y-%m-%d-%H-%M-%S"`
FILENAME="orig-${DATE}.png"
RENAME="${DATE}.png"
echo "capturing ${FILENAME}..."
adb shell screencap -p "/sdcard/${FILENAME}"
adb pull /sdcard/"${FILENAME}" ~/Pictures/
adb shell rm "/sdcard/${FILENAME}"

# 画像をリサイズ
convert ~/Pictures/"${FILENAME}" -scale 35% ~/Pictures/"${RENAME}"
rm -f ~/Pictures/"${FILENAME}"

echo "saved ~/Pictures/${RENAME}."

