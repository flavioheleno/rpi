# Raspberry Pi Resources

This repository has some tools and instructions to help setup a new RPi.

It is based on RPi + ArchLinux (ARM) but should work in Raspbian and other distros.

## Installation

- [SETUP.md](SETUP.md): RPi basic install

## Configuration

- [config/camera.md](config/camera.md): Camera configuration
- [config/lcd.md](config/lcd.md): LCD (SPI) configuration
- [config/network.md](config/network.md): Wired and wireless network configuration
- [config/system.md](config/system.md): System general settings

## Scripts

- [scripts/hdmi-off.sh](scripts/hdmi-off.sh): Disable HDMI port for headless setup
- [scripts/timezone.sh](scripts/timezone.sh): Sets TZ env variable to improve execution time ([article](https://blog.packagecloud.io/eng/2017/02/21/set-environment-variable-save-thousands-of-system-calls/))
- [scripts/wpa-setup.sh](scripts/wpa-setup.sh): Setup WiFI before booting RPi ([forum](https://archlinuxarm.org/forum/viewtopic.php?f=31&t=11529))

## Specs

- [specs/LCD-WS35.md](specs/LCD-WS35.md): Waveshare 3.5inch RPi LCD (A)

## Other

- [DASHBOARD.md](DASHBOARD.md): Dashboard screen using RPi

## References

- http://archpi.dabase.com/
- http://elinux.org/RPiconfig
- http://tutos.readthedocs.io/en/latest/source/RPi.html
- https://wiki.archlinux.org/index.php/Raspberry_Pi
- https://www.kernel.org/doc/Documentation/fb/api.txt
- https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md
