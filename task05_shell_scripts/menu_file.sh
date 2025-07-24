<<<<<<< HEAD
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
=======
#!/bin/bash

echo ""
echo "1) Create file"
echo "2) Delete file"
echo "3) Exit"
echo ""

echo "Choose an option:"
read choice

echo ""

case $choice in

1)
        echo "Enter file name:"
        read filename
        touch "$filename.txt"
        echo "$filename.txt created"
	;;
2)
        echo "Which file do you want to remove:"
        read filename2
        rm "$filename2.txt"
        echo "$filename2.txt removed"
	;;
3)
        echo "Goodbye!"
	;;
*)
        echo "Invalid option, try again"
	;;
esac
>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
