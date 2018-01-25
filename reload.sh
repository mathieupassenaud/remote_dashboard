#!/bin/bash -eu
export DISPLAY=:0.0
killall chromium-browser
bash /home/pi/remote-dashboard/start_chromium.sh
echo ' { "status":  "ok" }'
# End of script
