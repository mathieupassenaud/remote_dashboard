#!/bin/bash -eu

IN="$(cat /dev/stdin)"

PAGE_URL=$(jq .page_url  <<< $IN | tr -d \")

rm /home/pi/remote-dashboard/page_url

echo $PAGE_URL > /home/pi/remote-dashboard/page_url

echo ' { "page_url":  "'$PAGE_URL'" }'

