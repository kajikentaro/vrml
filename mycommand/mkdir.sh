#!/usr/bin/bash
#xargsでパイプを使ったときに引数にできる。

#フォルダ作成。
FOLDER=$(date "+pro2_%m_%d")
mkdir $FOLDER

#コメント部分の日付作成
DATE=$(date +'//%Y/%m/%d')

#回数を取得
echo -n 第何回目ですか。二桁の場合は0をつけてください。:
read NUM

#cファイルの作成
for ((i=0;i<$NUM;i++))
do
FILENAME=kadai$NUM$(echo $i | ./abc.out).c
COMMENT=$DATE 課題$NUM$(echo $i | ./abc.out) 19D8104026J 可児 憲太郎
echo $COMMENT >> ./$FOLDER/$FILENAME
done

echo 完了しました。
