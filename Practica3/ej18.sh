#Chequeo que se haya pasado solo un parametro
if [ $# -ne 1  ];then
  echo "Debe pasar un nombre de usuario como argumento"
  exit 1
fi
#Loop
while true; do
  #Verifica si usuario esta logueado
  if who | grep -q $1; then
    echo "Usuario logueado"
    break
  fi
  #Espera 10 segundos
  sleep 10
done
exit 0
