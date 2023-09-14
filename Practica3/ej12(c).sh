if [ $# -ne 3 ];then
  echo "Error: Deben pasarse tres parametros"
  exit 1
fi
num1=$1
num2=$2 
op=$3

case $op in
  +)
     resul=$((num1 + num2))
     ;;
  -)
     resul=$((num1 - num2))
     ;;
  %)
     resul=$((num1 % num2))
     ;;
  *)
     if [ "$op" = "*" ];then
	     resul=$((num1 * num2))
     else
        echo "Error: operacion no valida, ingrese +, -, *, %"
	      exit 1
     fi
     ;;
esac
echo "La operacion $op da como resultado: $resul"
