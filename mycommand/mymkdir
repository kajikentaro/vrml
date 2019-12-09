#/bin/bash

FOLDER=pro2_$(date "+%m_%d")
mkdir $FOLDER
cd $FOLDER

echo -n "第何回目ですか？(一桁の場合は0込みで):"
read NUM

echo -n "課題の数はいくつですか？:"
read TASK

for ((i=0;i<TASK;i++))
do
	FILE="kadai$NUM$(echo $i | ../abc.out).c"
	COMMENT="$(date "+//%Y/%m/%d") 課題$NUM$(echo $i | ../abc.out) 19D8104026J 可児憲太郎"
	echo $COMMENT >> $FILE
	cat ../template.txt >> $FILE
done

echo 完了しました
