# Waveshare 3.5inch RPi LCD (A), 320×480

LCD Controller: ILI9486L

## Pins

Pin                            | Symbol           | Description
-------------------------------|------------------|--------
1, 17                          | 3.3V             | Power positive (3.3V power input)
2, 4                           | 5V               | Power positive (5V power input)
3, 5, 7, 8, 10, 12, 13, 15, 16 | NC               | NC
6, 9, 14, 20, 25               | GND              | Ground
11                             | TP_IRQ           | Touch Panel interrupt, low level while the Touch Panel detects touching
18                             | LCD_RS           | Instruction/Data Register selection
19                             | LCD_SI / TP_SI   | SPI data input of LCD/Touch Panel
21                             | TP_SO            | SPI data output of Touch Panel
22                             | RST              | Reset
23                             | LCD_SCK / TP_SCK |  SPI clock of LCD/Touch Panel
24                             | LCD_CS           | LCD chip selection, low active
26                             | TP_CS            | Touch Panel chip selection, low active

[Reference](https://www.waveshare.com/product/3.5inch-RPi-LCD-A.htm)

## Drivers

- [AUR](https://aur.archlinux.org/packages/waveshare35a/)
- [Waveshare](https://www.waveshare.com/wiki/3.5inch_RPi_LCD_(A)#Driver)
- [GitHub](https://github.com/waveshare/LCD-show)

## Links

- https://github.com/swkim01/waveshare-dtoverlays/blob/master/waveshare35a-overlay.dts
- https://www.willprice.org/2017/09/16/adventures-with-tft-screens-for-raspberry-pi.html
- https://github.com/goodtft/LCD-show
- https://github.com/juj/fbcp-ili9341
