#!/bin/bash
set -eu

PAGE_URL=$(cat /home/pi/remote-dashboard/page_url)
echo ' { "page_url": "'$PAGE_URL'" }'

