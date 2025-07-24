#!/bin/bash
#1 copy a file
cp -a config.cfg configs/

#2 move a directory
mv backup/ archive/

#3 delete files with confirmation
rm -i /tmp/test/*.tmp

#4 copy a directory
cp -r documents/ documents_backup/

