#!/bin/bash -eu

# inspired from https://www.raspberrypi.org/forums/viewtopic.php?t=163316

# Run browser after boot to desktop
export DISPLAY=:0.0
/bin/sleep 3
PAGE_URL=$(cat /home/pi/remote-dashboard/page_url)
sudo -u pi chromium-browser --kiosk --incognito $PAGE_URL &
# End of script
