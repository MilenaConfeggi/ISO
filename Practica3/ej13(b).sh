while true; do
  echo "Elija a: Listar, b: Donde Estoy, c: Quien esta, d: salir"
  read opcion  
  case $opcion in
    a)
       ls 
       ;;
    b)
       pwd  
       ;;
    c)
       who  
       ;;
    d)
       exit 0
       ;;
    *)
       echo "Opcion no valida"
  esac
done 
