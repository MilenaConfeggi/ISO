#Defino funciones
inicializar(){
  array=()
}
agregar_elem(){
  array+=($1)
}
eliminar_elem(){
  if [ $1 -lt ${#array[*]} ]; then
    unset 'array[$1]'
  else
    echo "Posicion inexistente"
  fi
}
longitud(){
  echo "La longitud del arreglo es de ${#array[@]}"
}
imprimir(){
  for elem in ${array[@]}; do
    echo "$elem"
  done
}
inicializar_con_valores(){
  inicializar
  for ((i=0; i<$1; i++)); do
    array+=($2)
  done
}
inicializar_con_valores 5 2
longitud
imprimir
