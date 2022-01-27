#!/bin/bash

#chercher tous les dossiers serveurs qui sont presents 


#serveurs=find ./serv* -d


echo "$(ls -l serv* | grep serv | awk '{print($1)}')" > f.txt

sed -i 's/://g' f.txt 

serveurs=$(cat f.txt) 
premierserveur=$(cat f.txt | head -n1) 
Nbserveur=$(cat f.txt | wc -l)

echo "$serveurs"

echo "$Nbserveur"

#faire un build pour chaque dockerfile dans le dossiers et ajouter le code dans a.html

for nb in (seq 1 $Nbserveur)
do
 
 for image in (seq $premierserveur $serveurs)
 do
   
 echo "<p>$(docker build --no-cache .)</p>" | grep $image >> usr/data/html/a.html 

 done

done

