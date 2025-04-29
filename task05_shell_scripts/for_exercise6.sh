#!/bin/bash

suma=0

for i in {1..10}
do
	echo "dodaje $i"
	suma=$((suma +i))
done

echo "Suma liczb od 1 do 10 wynosi: $suma"
