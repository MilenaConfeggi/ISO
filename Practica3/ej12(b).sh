#-ne se usa como "es distinto de"
if [ $# -ne 2 ];then
  echo "Error: Deben pasarse dos numeros" 
  exit 1 
fi 
num1=$1 
num2=$2 
echo "La multiplicacion da como resultado: $(expr $num1 \* $num2)"
echo "La suma da como resultado: $(expr $num1 + $num2)"
echo "La resta da como resultado: $(expr $num1 - $num2)"
if [ $num1 -gt $num2 ]; then
  echo "el numero mas grande es $num1"
else
  echo "el numero mas grande es $num2"
fi
