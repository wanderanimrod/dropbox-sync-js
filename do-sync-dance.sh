#!/bin/bash
echo "Copying log file ... "
cp /home/pi/dropbox-sync-js/js-sync-log /media/ntfs/pi/rasppi/js-sync-log
sudo /home/pi/check-connection.sh && /usr/local/bin/node /home/pi/dropbox-sync-js/sync.js