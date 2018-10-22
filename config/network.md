# Network configuration

## Setup network interfaces

* Copy [eth0.network](network/eth0.network) to `/etc/systemd/network/eth0.network`
* Copy [wlan0.network](network/wlan0.network) to `/etc/systemd/network/wlan0.network`

## Setup wpa_supplicant

* Copy [wpa_supplicant-wlan0.conf](network/wpa_supplicant-wlan0.conf) to `/etc/wpa_supplicant/wpa_supplicant-wlan0.conf`
* Create dhcpcd hook by running `ln -s /usr/share/dhcpcd/hooks/10-wpa_supplicant /usr/lib/dhcpcd/dhcpcd-hooks/`
* Enable wpa_supplicant for wlan0 by running `sudo systemctl enable wpa_supplicant@wlan0`

## Setup dhcpcd

* Update `/etc/dhcpcd.conf` (refer to [dhcpcd.conf](network/dhcpcd.conf))
* Enable dhcpcd for all interfaces by running `sudo systemctl enable dhcpcd`

## Notes

* You can add more networks to `wpa_supplicant-wlan0.conf` using `network` blocks
* You can enable dhcpcd just for wlan0 by appending `@wlan0` to the command
