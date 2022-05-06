#!/bin/sh

for f in "$@"
do
	TYPE=$(file --mime-type -b $1)
	ENC=$(base64 $1)
	echo "data:$TYPE;base64,$ENC" | pbcopy
done
