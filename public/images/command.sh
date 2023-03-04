#!/bin/sh
if [ "$1" = "" ]
then
    echo "[ERROR] 引数にリストのファイルを指定してください。"
    exit
fi

for i in $(cat $1)
do
    echo "---------------------"
    echo "Target File: ${i}"
    filename=${i%.avif}
    echo "${filename}";
    convert -resize 33% "${filename}.avif" "${filename}-small.avif"
done