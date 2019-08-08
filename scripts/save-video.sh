#!/bin/bash

/opt/vc/bin/raspivid -n -ex auto -awb auto -t 270000 -w 1920 -h 1080 -fps 30 -b 1200000 -o /home/flavio/videos/$(date +"%Y%m%d%H%M%S").h264
