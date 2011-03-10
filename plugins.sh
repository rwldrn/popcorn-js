#!/bin/bash

DIR=plugins

FILES=( " " )

PLUGINS=$(find $DIR -name 'popcorn.*.js' -not \( -name '*.unit.js' \) )

DATA=${DIR}/plugins.json

i=0

for f in $PLUGINS
do
	FILES=("${FILES[@]}" "\"$f\",")
	((i++))
done

FILES[$i]=${FILES[$i]%%,}

echo "{ \"plugins\" : [ ${FILES[@]} ] }" > $DATA

#echo "{ \"plugins\" : [ ${FILES[@]} ] }"



