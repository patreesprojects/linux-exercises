<<<<<<< HEAD
#!/bin/bash
#1 kopiowanie pliku
cp -a config.cfg configs/

#2 przenoszenie katalogow
mv backup/ archiwum/

#3 usuwanie plikow po potwierdzeniu
rm -i /tmp/test/*.tmp

#4 kopiowanie katalogu
cp -r documents/ dokumenty_backup/

=======
#!/bin/bash
#1 copy a file
cp -a config.cfg configs/

#2 move a directory
mv backup/ archive/

#3 delete files with confirmation
rm -i /tmp/test/*.tmp

#4 copy a directory
cp -r documents/ documents_backup/

>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
