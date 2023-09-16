#itero en los archivos del directorio actual
for archivo in $(ls -1); do
  #Cambio mayus y minus y luego elimino letra A o a
  nom=$(echo $archivo | tr 'A-Za-z' 'a-zA-Z' | tr -d 'aA')
  echo "$nom"
done
