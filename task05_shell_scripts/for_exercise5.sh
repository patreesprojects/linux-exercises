#!/bin/bash
#usuwanie folderow, jesli zostaly wczesniej utworzone
for i in {1..5}
do
	rm -rf folder$i
done

#tworzenie folderow i plikow
for i in {1..5}
	do
	mkdir folder$i
	echo "utworzono folder$i wraz z plikiem w srodku"
	echo "W folderze$i znajduje sie plik.txt: folder$i" > folder$i/plik.txt
done
