#Inicializo pila
pila=()
tamanio=0
#Escribo funciones especificas
#Agrego elemento a la pila
push(){ 
  elem=$1
  pila+=($elem)
  tamanio=$(($tamanio + 1))
}
#Saco el ultimo elemento agregado
pop(){ 
  if [ $tamanio -gt 0 ]; then
    #Se saca de la pila el ultimo elemento
    unset 'pila[${#pila[@]}-1]'
    tamanio=$(($tamanio - 1))
  else
    echo "La pila esta vacia"
  fi
}

length(){
  echo "$tamanio"
}

print(){
  if [ $tamanio -gt 0 ]; then
    for elemento in ${pila[@]}; do
      echo "$elemento"
    done
  else
    echo "La pila esta vacia"
  fi
}
push me
push van
push a
push salir
push canas
push auxilio
push odio
push amo
push nose
push basta
pop
pop
pop
length
print
