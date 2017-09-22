#!/bin/sh

crontab -l > tmpfile
echo "0 4 * * * apt-get update >> /var/log/update_script.log && apt-get upgrade >> /var/log/update_script.log" >> tmpfile
crontab tmpfile
rm tmpfile