#!/bin/bash
#1 kopiowanie pliku
cp -a config.cfg configs/

#2 przenoszenie katalogow
mv backup/ archiwum/

#3 usuwanie plikow po potwierdzeniu
rm -i /tmp/test/*.tmp

#4 kopiowanie katalogu
cp -r documents/ dokumenty_backup/

