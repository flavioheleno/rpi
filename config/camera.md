# Camera configuration

## Setup memory

Add/replace values on `/boot/config.txt` using the reference values:

```
gpu_mem=128
start_file=start_x.elf
fixup_file=fixup_x.dat
```

## Capture photo

`/opt/vc/bin/raspistill -o photo.jpg`

## Capture video

`/opt/vc/bin/raspivid -n -t 10000 -o video.mp4`

## Stream video over TCP

`/opt/vc/bin/raspivid -n -ih -t 0 -l -o tcp://0.0.0.0:3333 `
