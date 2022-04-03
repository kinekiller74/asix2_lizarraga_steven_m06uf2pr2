#!/bin/bash
clear
#steven Lizarraga
while [[ true ]]
do
echo
    "Numero de usuarios totales (entre 1 i 100)"
    read Tusers
    if ((Tusers ›=1 && Tusers <= 100))
    then
        while [[ true ]]
        do
            echo "Valor uid para usuarios (minim 5000)"
    read uidNumber
if ((uidNumber ›= 5000))
    then
        for (( contador=0; contador‹Tusers; contador++ ))
        do
            PASSWORD=$ (echo $RANDOM$ (date +%N%s) |md5sum |cut -c 2-9)
        echo "usr$uidNumber:$PASSWORD" | chpasswd
        echo "usr$uidNumber:$PASSWORD" >> ctsUsuaris.txt
        echo "------------------------" >> ctsUsuaris.txt
        ((uidNumber++))
        done
    break;
    fi
    done
break;
fi
done
exit 0