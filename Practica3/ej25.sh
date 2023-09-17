#compruebo de que se pase solo un parametro
if [ $# -gt 2 ];then
  echo "Error: Deben pasarse un parametro -b n, -l, -i" 
  exit 1 
fi 
#Me traigo a todos los users
users=$(getent group users | cut -d ':' -f 4)
#Dependiendo parametro se realiza una accion
case $1 in
  -b)
      if [ $2 -lt ${#users[*]} ]; then
        echo "El elemento en la posicion $2 es ${users[$2]}"
      else
        echo "Error= posicion inexistente"
      fi
      ;;
  -l)
     echo "La longitud del arreglo es de ${#users[@]}"
     ;;
  -i)
     for elem in ${num[@]}; do
       echo "elem"
     done
     ;;
   *)
     echo "Error: parametro no corresponde"
     exit 1
     ;;
esac
