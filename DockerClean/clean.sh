#!/bin/bash
  
if [ -f $1 ] ; then 
   rm $1
fi
nodeDown=$( docker node ls --format "{{.ID}} {{.Status}}" | grep Down );
cut -d' ' -f1 <<<"$nodeDown" >> removeNode.txt;
while IFS='' read -r line || [[ -n "$line" ]]; do 
      docker node rm $line; 
done < "$1"
