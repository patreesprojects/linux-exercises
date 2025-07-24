<<<<<<< HEAD
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

=======
#!/bin/bash

# create text files in a loop
#touch file1.txt file2.txt file3.txt

# example of creating files with a loop
for i in {1..5}
do
    touch file$i.txt
done

# loop to print all text files in the current directory
for file in *.txt
do
    echo "Text file: $file"
done

>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
