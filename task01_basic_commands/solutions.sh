#!/bin/bash
# Kopiowanie pliku do katalogu backup/
cp -a plik1.txt backup/
#przenoszenie katalogow do archiwum
mv projekt/ archiwum/
#komenda usuwania plikow .log
rm -i /var/log/test/*.log
#komenda kopiowania katalogu rekurencyjnie
cp -r data/ kopia/

