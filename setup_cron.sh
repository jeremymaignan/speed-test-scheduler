#!/bin/sh

(crontab -l; \
echo "*/30 * * * * (filename=\"$HOME/network_quality_log.csv\"; output=\$(networkquality); download=\$(echo \"\$output\" | grep 'Downlink capacity' | awk '{print \$3, \$4}'); upload=\$(echo \"\$output\" | grep 'Uplink capacity' | awk '{print \$3, \$4}'); datetime=\$(date '+\%d/\%m/\%Y \%H:\%M'); if [ ! -f \$filename ]; then echo \"DateTime, Download, Upload\" > \$filename; fi; echo \"\$datetime, \$download, \$upload\" >> \$filename)") | \
crontab -
