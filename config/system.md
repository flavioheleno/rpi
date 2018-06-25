# System configuration

## Hardware Random Number Generator

Arch Linux ARM for the Raspberry Pi had the `bcm2708-rng` module set to load at boot; starting with kernel 4.4.7 the `bcm2835_rng` module replaces the former on Raspberry Pi 2 and Raspberry Pi 3 units.

Install `rng-tools` and tell the Hardware RNG Entropy Gatherer Daemon (`rngd`) where to find the hardware random number generator. This can be done by editing `/etc/conf.d/rngd`:

```bash
RNGD_OPTS="-o /dev/random -r /dev/hwrng" 
```

and enabling and starting the `rngd` service.

If `haveged` is running, it should be stopped and disabled, as it might compete with `rngd` and is only preferred when there is no hardware random number generator available.

Once completed, this change ensures that data from the hardware random number generator is fed into the kernel's entropy pool at `/dev/random`. To check the available entropy, run:

```bash
# cat /proc/sys/kernel/random/entropy_avail 
```

The number it reports should be around 3000, whereas before setting up rngd it would have been closer to 1000.

[source](https://archlinuxarm.org/platforms/armv6/raspberry-pi)

## Keyboard: ABNT2 Keymap

```bash
echo 'KEYMAP="br-abnt2.map.gz"'| sudo tee /etc/vconsole.conf
```
