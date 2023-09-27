#Chequea 1 parametro
if [ $# -ne 1 ]; then
  echo "el programa debe recibir 1 parametro"
  exit 1
fi
contador=0
#Buscar el usuario
if [ $(cat /etc/passwd | cut -d: -f1 | grep $1 | wc -l) -eq 0 ]; then
   echo "El usuario no existe en el sistema"
   exit 2
fi
#loop
while true; do
  if [ $(who | cut -d" " -f1 | grep -i $1 | wc -l) -gt 0 ]; then
     arch="access + $1 + .log"
     direc="/var/log/access/ + $arch"
     echo "Fecha> $(date)" >> $direc
     echo "Nombre> $nom" >> $direc
     echo "Se guardo exitosamente"
     ((contador++))
  else
    echo "El usuario no esta logueado"
    exit 1
  fi
  if [ $contador -eq 30 ]; then
    break
  fi
  sleep 30
done
