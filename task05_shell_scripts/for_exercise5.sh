<<<<<<< HEAD
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
=======
#!/bin/bash
#remove directories if they already exist
for i in {1..5}
do
    rm -rf dir$i
done

#create directories and files
for i in {1..5}
do
    mkdir dir$i
    echo "created dir$i with a file inside"
    echo "In dir$i there is file.txt: dir$i" > dir$i/file.txt
done
>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
