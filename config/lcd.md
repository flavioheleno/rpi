# Waveshare 3.5" LCD configuration

## Packages

Install the following packages:
- xf86-video-fbturbo-git
- xinput_calibrator
- waveshare35a (AUR)

## Configuration

Add the following lines to `/boot/config.txt`:

```
device_tree=bcm2708-rpi-0-w.dtb
device_tree_param=i2c_arm=on
device_tree_param=spi=on

device_tree_overlay=waveshare35a-overlay

hdmi_group=2
hdmi_mode=1
hdmi_mode=87
hdmi_cvt 800 480 60 6 0 0 0
```

**notes**
- `bcm2708-rpi-0-w.dtb` for RPi 0w
- `bcm2709-rpi-2-b.dtb` for RPi 2b
- `bcm2710-rpi-3-b.dtb` for RPi 3b

Add the following parameters to `/boot/cmdline.txt`:

```
fbcon=map:10 fbcon=font:ProFont6x11
```

Add the following lines to `/etc/X11/xorg.conf.d/99-fbturbo.conf`:

```
Section "Device"
  Identifier  "Allwinner A10/A13 FBDEV"
  Driver      "fbturbo"
  Option      "fbdev"                   "/dev/fb1"

  Option      "SwapbuffersWait"         "true"
EndSection
```

Add the following lines to `/etc/X11/xorg.conf.d/99-calibration.conf`:

```
Section "InputClass"
  Identifier    "calibration"
  MatchProduct  "ADS7846 Touchscreen"
  Option        "Calibration"         "3900 240 3900 240"
EndSection
```
