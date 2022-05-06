#!/bin/sh

for f in "$@"
do
	TYPE=$(file --mime-type -b $1)
	ENC=$(base64 $1)
	REF=""
	FILENAME=$(basename $1)
	if [ true ]
	then
		REF="![$FILENAME][img_$FILENAME]\n[img_$FILENAME]"
	fi
	printf "$REF: data:$TYPE;base64,$ENC" | pbcopy
done
