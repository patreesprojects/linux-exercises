<<<<<<< HEAD
#!/bin/bash

#Napisz skrypt read_sum.sh, który:
#Poprosi użytkownika o dwie liczby (przy użyciu read)
#Doda je do siebie
#Wyświetli wynik w stylu:
#Podaj pierwszą liczbę: 5
#Podaj drugą liczbę: 7
#Wynik: 5 + 7 = 12

echo "Podaj pierwsza liczbe: "
read liczba1

echo "Podaj druga liczbe: "
read liczba2

suma=$((liczba1 + liczba2))

echo "Wynik: $liczba1 + $liczba2 = $suma"
=======
#!/bin/bash

# Simple script that asks for two numbers and prints their sum

echo "Enter first number:"
read number1

echo "Enter second number:"
read number2

sum=$((number1 + number2))

echo "Result: $number1 + $number2 = $sum"
>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
