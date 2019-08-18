# Hardware Watchdog

You can use the BCM2708's hardware watchdog.

To use it begin by loading the module:

```
sudo modprobe bcm2708_wdog
```

Then edit the /etc/modules file:

```
sudo nano /etc/modules
```

and add the following line:

```
bcm2708_wdog
```

Next you will need to setup the watchdog daemon.

Install and confiigure it to start on bootup:

```
sudo apt-get install watchdog
sudo systemctl watchdog start
```

Next configure watchdog:

```
sudo nano /etc/watchdog.conf
```

Uncomment the line #watchdog-device = /dev/watchdog so it reads:

```
watchdog-device = /dev/watchdog
```

[source](https://raspberrypi.stackexchange.com/questions/1401/how-do-i-hard-reset-a-raspberry-pi/1403)
