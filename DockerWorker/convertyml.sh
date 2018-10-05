#!/bin/bash
tour=0;

tokenManager=tokenManager.yml;
tokenWorker=tokenWorker.yml;

if [ -f $tokenManager ] ; then
    rm $tokenManager
fi
echo "---" >> $tokenManager
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "ligne : $tour"
    echo "Text read from file: $line"
    tour=$((tour+1));
    echo "token$tour:    $line" >> $tokenManager
done < "$1"

if [ -f $tokenWorker ] ; then
    rm $tokenWorker
fi
echo "---" >> $tokenWorker
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "ligne : $tour"
    echo "Text read from file: $line"
    tour=$((tour+1));
    echo "token$tour:    $line" >> $tokenWorker
done < "$2"
