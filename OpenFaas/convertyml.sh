#!/bin/bash
tour=0;

if [ -f token.yml ] ; then
    rm token.yml
fi
echo "---" >> token.yml
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "ligne : $tour"
    echo "Text read from file: $line"
    tour=$((tour+1));
    echo "token$tour:    $line" >> token.yml
done < "$1"
