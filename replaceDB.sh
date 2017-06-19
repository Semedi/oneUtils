#!/bin/bash

if [ $# -ne 1 ]
    then exit -1
fi
USER=semedi
ORIG=$1
DEST="/var/lib/one/one.db"
NOW=$(date +"%m-%d-%Y")
BACKUP="one.$NOW.db"
echo "Backing up data to backups/one.$NOW.db file, please wait..."
sudo cp $DEST backups/$BACKUP
sudo rm $DEST
sudo cp $1 $DEST
sudo chown $USER:$USER $DEST



