#Declaracion inicial
num=(10 3 5 7 9 3 5 4)

pares_impares(){
  local resultado=0
  for numero in ${num[@]}; do
    if [ $((numero % 2)) -eq 0 ]; then
      echo "$numero"
    else
      resultado=$((resultado + numero)) 
    fi 
  done
  echo "$resultado"
}

pares_impares 
