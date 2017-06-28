#!/bin/bash

# save this file in /etc/profile.d/hdmi-off.sh and make it executable

if [ -f "/opt/vc/bin/tvservice" ]; then
    /opt/vc/bin/tvservice -o > /dev/null
fi
