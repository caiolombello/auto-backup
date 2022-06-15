#!/bin/bash
mv /home/vagrant/backup.sh /backup.sh 
chmod +x /backup.sh
cron="0 3 * * * root /backup.sh"
echo $cron >> /etc/crontab
