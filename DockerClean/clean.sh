#!/bin/bash

if [ -s $1 ] ; 
then
   rm $1
fi
nodeDown=$( docker node ls --format "{{.ID}} {{.Status}}" | grep -e Down -e Unknown );
cut -d' ' -f1 <<<"$nodeDown" >> removeNode;


str="" 
content=$(cat removeNode) 
if [ "$str" == "$content" ];then  
   echo ""
else
   while IFS='' read -r line || [[ -n "$line" ]]; do 
         docker node rm $line; 
   done < "$1"
fi

