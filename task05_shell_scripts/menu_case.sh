#!/bin/bash

#Cel:
#Napisz skrypt menu_case.sh, który:
#Wyświetli użytkownikowi menu:
#Wybierz operację:
#1) Utwórz katalog
#2) Usuń katalog
#3) Wyjdź
#Poprosi użytkownika o wybór (read opcja)
#Zależnie od wyboru:
#1 ➔ poprosi o nazwę katalogu, stworzy go
#2 ➔ poprosi o nazwę katalogu, usunie go
#3 ➔ zakończy program z komunikatem „Do widzenia!”
#Inne ➔ komunikat: „Nieprawidłowa opcja”

echo "1) Utworz katalog"
echo "2) Usun katalog"
echo "3) Wyjdz"

read opcja

case $opcja in
 1)
	 echo "podaj nazwe katalogu do utworzenia: "
	 read nazwakatalogu
	 mkdir "$nazwakatalogu"
	 echo "Utworzono katalog: $nazwakatalogu"
	 ;;
 2)
	 echo "Podaj nazwe katalogu do usuniecia:"
	 read nazwakatalogu
	 rm -r "$nazwakatalogu"
	 echo "Usunięto katalog: $nazwakatalogu"
	 ;;
 3)
	 echo "Do widzenia!"
	 ;;
 *)
	 echo "Nieprawidlowy wybor, sproboj ponownie"
	 ;;
esac
