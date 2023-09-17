#Defino vectores
vec1=( 1 80 65 35 2 )
vec2=( 5 98 3 41 8  )
#Comparo longitud de ambos vectores
if [ ${#vec1[@]} == ${#vec2[@]} ]; then 
  tamanio=${#vec1[@]}
  #Itero por la cantidad de elementos de los vectores y comparo uno por uno
  for ((i= 0; i<$tamanio; i++)); do
     resul=$((vec1[$i] + vec2[$i]))
     echo "La suma de los elementos de la posicion $i de los vectores es $resul"
  done
else
  echo "Los vectores no son de igual longitud"
fi

