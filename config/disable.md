# Disabling hardware and services

## Wifi

Add the line below to `/boot/config.txt`:

```
dtoverlay=disable-wifi
```

## Bluetooth

To disable the service, run:

```bash
sudo systemctl stop bluetooth
sudo systemctl disable bluetooth
```

To disable the hardware, add the line below to `/boot/config.txt`:

```
dtoverlay=disable-bt
```

## Avahi

To disable the service, run:

```bash
sudo systemctl stop avahi-daemon
sudo systemctl disable avahi-daemon
sudo systemctl disable avahi-daemon.socket
```
