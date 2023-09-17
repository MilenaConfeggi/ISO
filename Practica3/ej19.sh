while true; do
  echo "12: calculadora"
  echo "13a: numeros 1-100"
  echo "13b: Listar-DondeEstoy-QuienEsta"
  echo "13c:archivo o directorio"
  echo "14: renombrando archivos (no hacer por las dudas)"
  echo "16: extension"
  echo "17: intercambio mayusculas-minusculas"
  echo "18: Usuario logueado"
  echo "19: Salir"
  read opcion  
  case $opcion in
    12)
       echo "Ingresar 2 numeros y una operacion"
       read num1 num2 op
       ./ej12.sh $num1 $num2 $op
       ;;
    13a)
       ./ej13a.sh  
       ;;
    13b)
       ./ej13b.sh    
       ;;
    13c)
       echo "Ingrese el nombre de archivo o directorio a buscar"
       read archivo
       ./ej13c.sh $archivo 
       ;;
    14)
       echo "escriba -a o -b, un directorio y una cadena para renombrar"
       read op direc cadena
       ./ej14.sh $op $direc $cadena
       ;;
    16)
       echo "Escriba extension a buscar"
       read ext
       ./ej16.sh $ext
       ;;
    17)
       ./ej17.sh
       ;;
    18)
       echo "escriba usuario para saber si se ha logueado"
       ./ej18.sh
       ;;
    19)
       exit 1
       ;;
    *)
       echo "Opcion no valida"
  esac
done 
