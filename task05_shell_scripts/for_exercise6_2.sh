<<<<<<< HEAD
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
=======
#!/bin/bash

#Instead of printing steps like in the previous task,
#this script sums numbers as in a math exercise:
#1+2+3+4+5+6+7+8+9+10 = 55

sum=0
sequence=""

for i in {1..10}
do
    sum=$((sum + i))

    if (($i == 10)); then
        sequence="${sequence}${i}"
    else
        sequence="${sequence}${i}+"
    fi
done

echo "$sequence = $sum"
>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
