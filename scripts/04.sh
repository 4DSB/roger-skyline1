#!/bin/bash

fc=""
fccron=/etc/crontab
fccron=/home/rogerskyline/04
fic=`find $fccron -mtime -1`
if [ ! -z $fic ]
then
echo "Cron tab modified" | mail -s "Contab modified" root
fi