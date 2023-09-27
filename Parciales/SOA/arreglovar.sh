#!/bin/bash
ar=()
#Recorrer /var/log
for elem in $(ls /var/log); do
  if [ $($elem | grep "access" | wc -l) -ne 0 ]; then
     ar+=$(echo $elem | cut -d" " -f1)
  fi
done

listar(){
  for elem in ${ar[@]}; do
     echo $elem
  done
}

cantidad(){
  echo ${#ar[@]}
}

eliminar(){
  if [ $1 -le ${#ar[@]} ]; then
    elem=ar[$1]
    unset ar[$1]
    if [ $2 == "fisico" ]; then
       rm $elem
    fi
  else
     echo "la posicion no existe"
     exit 1
  fi
}
