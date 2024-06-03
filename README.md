# speed-test-scheduler
A command to run speed tests every 30min and log the results in a CSV file.

## Purpose

I own a 4G box, and the connection speed is highly impacted by the local traffic.
Typically the connection is significantly slower after working hours and on weekends.

![Network Status Screenshot](https://github.com/jeremymaignan/speed-test-scheduler/blob/main/network_status_screenshot.png)

This project aims to identify the days and times when the internet connection is at its slowest.
## Usage

```sh
# Give execution permission
chmod +x ./setup_cron.sh

# Setup cron job
./setup_cron.sh

# Check the job has been setup
crontab -l

# To edit the job (destination file or frequency)
crontab -e

# Read results
cat ~/network_quality_log.csv
```
