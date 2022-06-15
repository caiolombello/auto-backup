#!/bin/bash
DIR="/backup/"
if [ -d "$DIR" ]; then
  echo "Backing up on ${DIR}..."
else
  mkdir $DIR
fi

rsync -aAXHv --exclude={"/dev/*","/home/*","/mnt/*","/media/*","/proc/*","/run/*","/sys/*","/tmp/*","/lost+found"} / /backup
tar -czf backup.tar.gz /backup
