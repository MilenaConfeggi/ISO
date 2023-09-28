#!/bin/bash
#Cheque que reciba al menos 2 parametros
if [ $# -lt 2 ]; then
  echo "debe recibir al menos 2 parametros"
  exit 1
fi
#Verifico que exista fecha 
if [ $(ls /var/log | cut -d"." -f2 | grep $1 | wc -l) -eq 0 ]; then
  echo "La fecha no existe"
  exit 2
fi
#imprimo columnas
echo "IP / cantidad"
#Si existe fecha recorre
for ip in {@:2}; do
  echo "$ip / $(cat /var/log/$1.log | cut -d"-" -f1 | grep -w $ip | wc -l)"
done
exit 0

