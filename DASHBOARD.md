# Dashboard setup

Notes on setting up dashboard screens

## LXDE Settings

```bash
sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
```

```
# Comment the line below
# @xscreensaver -no-splash

# Add these lines:

# Turn off screensaver
@xset s off

# Turn off power saving
@xset -dpms

# Disable screen blanking
@xset s noblank

# Hide the mouse cursor
@unclutter
```

## config.txt

Ensure the following lines are present on your `/boot/config.txt`:
```
disable_overscan=1
hdmi_force_hotplug=1
hdmi_group=1
hdmi_mode=16
config_hdmi_boost=4
dtparam=audio=on
gpu_mem=128
```
