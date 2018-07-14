# Camera configuration

## Setup memory

Add/replace values on `/boot/config.txt` using the reference values:

```
gpu_mem=128
start_file=start_x.elf
fixup_file=fixup_x.dat
```

## Setup V4L2

Add `bcm2835-v4l2` to `/etc/modules-load.d/rpi-camera.conf`.

## Capture photo

`/opt/vc/bin/raspistill -o photo.jpg`

## Capture video

`/opt/vc/bin/raspivid -n -t 10000 -o video.h264`

`/opt/vc/bin/raspivid -n -ex auto -awb auto -w 1920 -h 1080 -fps 30 -b 1200000 -o video.h264`

## Stream video over TCP

`/opt/vc/bin/raspivid -n -ih -t 0 -l -o tcp://0.0.0.0:3333`

## Stream video over RTSP (port 8554)

`/opt/vc/bin/raspivid -o - -t 0 -ex auto -awb -hf -w 1920 -h 1080 -fps 30 -b 1200000 -n | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/}' :demux=h264`

## Stream video to LCD Display

`mplayer -nosound -framedrop -fs tv:///dev/video0 `
