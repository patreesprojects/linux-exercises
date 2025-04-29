#!/bin/bash

for plik in *.txt
do
  if [[ "$plik" == *1* ]]; then
    echo "Plik zawiera cyfre 1: $plik"
  else
    echo "Plik NIE zawiera cyfre 1: $plik"
  fi
done

