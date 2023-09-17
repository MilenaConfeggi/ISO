home_direc=$HOME
bin_direc=$home/bin
#Verifico si el directorio bin existe y sino lo creo
if [ ! -d $bin_direc ]; then
  mkdir -p $bin_direc
fi
cant=0
#Itero
for archivo in *; do
  if [ -x $archivo ] && [ -f $archivo ]; then
    mv $archivo $bin_direc
    ((cant++))
    echo "Moviendo $archivo"
  fi
done
#Imprimo resultados
if [ $cant == 0 ]; then
  echo "No se movieron archivos"
else
  echo "Se movieron $cant archivos a $bin_direc"
fi
