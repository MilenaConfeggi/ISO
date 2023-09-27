#!/bin/bash
#Verifico que la cantidad de parametros sea mayor que 0
if [ $# -eq 0 ]; then
  echo "Debe pasarse al menos un parametro"
  exit 1
fi

esta_logueado(){
  #Extraigo de who todos los usuarios logueados
  #Me quedo con el nombre de cada usuario 
  #Verifico con grep que el usuario pasado como parametro exista
  if [ $(who | cut -d" " -f1 | grep -w $1 | wc -l) -ne 0 ]; then
    return 0
  else
    return 1
  fi
}

cant_procesos(){
  #Llamo proceso 
  esta_logueado $1
  #SI esta logueado
  if [$? -eq 0 ]; then
    #Saco de ps los procesos activos
    #Me fijo cuantos de ellos pertenecen al usuario y devuelvo la cantidad
    return $(ps aux | grep -w $1 | wc -l)
  else
    return 0
  fi 
}

uso_procesos(){
  cant_procesos $1
  if [ $? -ge 100 ]; then
    return 0
  else
    return 1
  fi
}

echo "Fecha> $(date)" >> reporte.txt
echo "Fecha> $(date)"echo "Fecha> $(date)"
for i in $#; do
  uso_procesos $i
  if [ $? -eq 0 ]; then
    echo "Nombre: $i" >> reporte.txt
    echo "Fecha> $(date)"
  fi
done
exit 0
