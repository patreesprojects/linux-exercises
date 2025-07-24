<<<<<<< HEAD
#!/bin/bash
# Kopiowanie pliku do katalogu backup/
cp -a plik1.txt backup/
#przenoszenie katalogow do archiwum
mv projekt/ archiwum/
#komenda usuwania plikow .log
rm -i /var/log/test/*.log
#komenda kopiowania katalogu rekurencyjnie
cp -r data/ kopia/

=======
#!/bin/bash
# Copy file to the backup directory
cp -a file1.txt backup/
# Move the project directory to the archive
mv project/ archive/
# Remove .log files with confirmation
rm -i /var/log/test/*.log
# Copy a directory recursively
cp -r data/ copy/

>>>>>>> d5da8039ca9257930f6bd3c8225a4c50f0134215
