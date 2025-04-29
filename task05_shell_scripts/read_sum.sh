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
