#!/bin/bash

case "$1" in
    --popup)
        notify-send "$(df -h -t ext4 --output=target,avail,used,pcent)"
        ;;
    *)
        echo "$(df -t ext4 --total -h | awk '$1 == "total" { print $5 }')"
        ;;
esac
