#!/bin/bash

#chercher tous les dossiers serveurs qui sont presents 


#serveurs=find ./serv* -d


echo "$(ls -l serv* | grep serv | awk '{print($1)}')" > file.txt

sed -i 's/://g' file.txt 

serveurs=$(cat file.txt) 

premierserveur=$(cat file.txt | head -n1) 

Nbserveur=$(cat file.txt | wc -l)

echo "$serveurs"

echo "$Nbserveur"

echo "$premierserveur"


#faire un build pour chaque dockerfile dans le dossiers et ajouter le code dans a.html


 
 for image in $premierserveur .. $serveurs 
 do
   echo "******$image"

     cd ~/Desktop/microservice/$image

 vari=$(docker build --no-cache . | grep $image)
  
 echo "<p>$vari</p>"  >> /usr/data/html/a.html 

 done

docker run -itd -p 8080:80 --name nginxserver nginx
