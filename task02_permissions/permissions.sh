#!/bin/bash
#adding permissions for txt files

touch alpha.txt beta.txt gamma.txt

chmod 400 alpha.txt

#adding testuser as the owner of alpha.txt
sudo chown testuser alpha.txt


chmod 600 beta.txt

chmod 700 gamma.txt

ls -l alpha.txt beta.txt gamma.txt


