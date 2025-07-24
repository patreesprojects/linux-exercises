<<<<<<< HEAD
#!/bin/bash

for plik in *.txt
do
  if [[ "$plik" == *1* ]]; then
    echo "Plik zawiera cyfre 1: $plik"
  else
    echo "Plik NIE zawiera cyfre 1: $plik"
  fi
done

=======
#!/bin/bash

for file in *.txt
do
  if [[ "$file" == *1* ]]; then
    echo "File contains the digit 1: $file"
  else
    echo "File does NOT contain the digit 1: $file"
  fi
done

>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
