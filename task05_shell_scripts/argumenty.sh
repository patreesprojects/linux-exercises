#!/bin/bash

nazwapliku=$1
tekst=$2

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Użycie: ./argumenty.sh nazwa_pliku \"tekst do zapisania\""
  exit 1
fi

echo "$tekst" > "$nazwapliku"
echo "Plik o nazwie: $nazwapliku, zostal utworzony wraz z tekstem: $tekst"

