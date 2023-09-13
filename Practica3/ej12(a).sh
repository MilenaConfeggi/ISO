echo "ingresa un numero"
read num1
echo "ingresa otro numero"
read num2 
echo "La multiplicacion da como resultado: $(expr $num1 \* $num2)"
echo "La suma da como resultado: $(expr $num1 + $num2)"
echo "La resta da como resultado: $(expr $num1 - $num2)"
if [ $num1 -gt $num2 ]; then
  echo "el numero mas grande es $num1"
else
  echo "el numero mas grande es $num2"
fi
