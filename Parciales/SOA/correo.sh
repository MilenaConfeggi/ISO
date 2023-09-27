#!/bin/bash
#Recorro el /etc/passwd
for linea in $(cat /etc/passwd); do
  #Me guardo ruta que se encuentra en la posicion 6
  ruta=$(echo $linea | cut -d":" -f6)
  nom=$(echo $linea | cut -d":" -f1)
  bash=$(echo $linea | cut -d":" -f7)
  #Busco en la ruta un tipo directorio con nombre mailDir
  #Cuento la cantidad y si hay uno es que existe
  #Verifico que bash= /bin/bash
  if [ $(sudo find $ruta -type d -name mailDir | wc -l) -eq 1] && [$bash = /bin/bash ]; do
     echo "$nom" >> /var/listado.tx
  fi
done

