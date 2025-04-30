#!/bin/bash

echo ""
echo "1) Utworz plik"
echo "2) Usun plik"
echo "3) Wyjscie"
echo ""

echo "wybierz opcje: "
read costam

echo ""

case $costam in

1)
	echo "Podaj nazwe pliku: "
	read nazwapliku
	touch "$nazwapliku.txt"
	echo "$nazwapliku.txt zostal poprawnie utworzony"
	;;
2)
	echo "Ktory plik chcesz usunac: "
	read nazwapliku2
	rm "$nazwapliku2.txt"
	echo "$nazwapliku2.txt zostal poprawnie usuniety"
	;;
3)
	echo "Do widzenia!"
	;;
*)
	echo "Nieprawidlowa opcja, sprobuj ponownie"
	;;
esac
