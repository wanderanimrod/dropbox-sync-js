#!/bin/bash
touch /home/pi/dropbox-sync-js/js-sync-log-$MACHINE_NAME
echo `date` "Copying log file ... "
cp /home/pi/dropbox-sync-js/js-sync-log-$MACHINE_NAME /media/ntfs/pi/rasppi/js-sync-log-$MACHINE_NAME
sudo /home/pi/check-connection.sh && /usr/local/bin/node /home/pi/dropbox-sync-js/sync.js machine $MACHINE_NAME