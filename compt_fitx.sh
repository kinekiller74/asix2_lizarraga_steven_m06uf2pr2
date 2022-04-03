#!/bin/bash
local fitxer

echo "Introduce el directorio de origen : "
read dir1

for fitxer in $1/*
do  if [[ -s $fitxer ]] && [ [-x $fitxer ]]
then  
    tar -cvf $dir1.tar $dir1
fi
done
echo "Introduce el destino del archivo: "
read dir2
cp -rf $dir1.tar $dir2
exit 1
