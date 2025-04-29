#!/bin/bash

#zamiast jak w poprzednim zadaniu wypisywac co robimy po kolei
#chcialem zapisac to zadanie jakbym rozwiazywal zadanie matematyczne:
#1+2+3+4+5+6+7+8+9+10 = 55

suma=0
ciag=""

for i in {1..10}
do
	suma=$((suma + i))

	if (($i == 10)); then
	 ciag="${ciag}${i}"
 	else
	 ciag="${ciag}${i}+"
	fi
done

echo "$ciag = $suma"
