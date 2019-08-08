#!/bin/bash

ffmpeg -i rtsp://@192.168.241.1:62156 -acodec copy -vcodec copy /tmp/feed01.mp4
