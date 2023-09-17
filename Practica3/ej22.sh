#Declaracion inicial
num=(10 3 5 7 9 3 5 4)
#Funcion  que multiplica todos los elementos
productoria(){
  local resultado=1
  for numero in ${num[@]}; do
    resultado=$((resultado * numero)) 
  done
  echo "$resultado"
}

productoria 
