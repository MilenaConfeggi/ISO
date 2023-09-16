#compruebo de que se pase un parametro
if [ $# -ne 1  ];then
  echo "Error: Debe pasarse un parametro" 
  exit 1
fi
ext=$1
#Si el archivo ya existe se reescribe y sino se crea
echo > reporte.txt
#Escribo linea inicial del archivo .txt
echo "Nombre de Uusario / Cantidad de archivos con extension $ext" > reporte.txt
#Itero en el directorio actual
#Listo todos los usuarios y me quedo solo con el usuario y la ruta fija (1,6)
for linea in $(cat /etc/passwd | cut -d: -f 1,6); do 
  user=$(echo $linea | cut -d: -f1)
  rut=$(echo $linea | cut -d: -f2)
  #No contabilizamos usuarios sin directorio personal
  if [ -d $rut ]; then
    #Buscamos en ruta todos los nombres terminados en ext y contamos lineas
    #Luego lo escribimos en reportes.txt con >>
    echo $user $(find $rut -name "*.$ext" | wc -l) >> reporte.txt
  fi

done
