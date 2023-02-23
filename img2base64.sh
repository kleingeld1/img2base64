#!/bin/sh

for f in "$@"
do
	TYPE=$(file --mime-type -b $1)
	ENC=$(base64 -i $1)
	REF=""
	FILENAME=$(basename $1)
	if [ true ]
	then
		REF="![][$FILENAME _ref]\n\n[$FILENAME _ref]"
	fi
	printf "$REF: data:$TYPE;base64,$ENC" | pbcopy
done
