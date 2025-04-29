#!/bin/bash

#tworzenie plikow tekstowych w petli
#touch plik1.txt plik2.txt plik3.txt

#przykład stworzenia plikow petla
for i in {1..5}
do 
	touch plik$i.txt
done

#petla do wypisania wszystkich plikow w danej lokacji w petli
for plik in *.txt
do
	echo "Plik tekstowy: $plik"
done

