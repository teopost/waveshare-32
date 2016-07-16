
Configuration of Raspberry LCD for RuneAudio
===

Resize filesystem
---
```
fdisk /dev/mmcblk0

Delete the second partition /dev/mmcblk0p2
d
2

Create a new primary partition and use default sizes prompted. This will then create a partiton that fills the disk
n
p
2
enter
enter

Save and exit fdisk:
w


Now reboot. Once rebooted: 
resize2fs /dev/mmcblk0p2
````

Update pacman librariesr
---
```
pacman -Syy 
````

Installation of fbturbo
---
```
pacman -S xf86-video-fbturbo-git
```

raspberry firmware update
---
```
wget https://raw.githubusercontent.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update
chmod +x /usr/bin/rpi-update
REPO_URI=https://github.com/notro/rpi-firmware 
BRANCH=builtin
rpi-update
````

Driver download
---
From: http://www.waveshare.com/wiki/3.2inch_RPi_LCD_(B)#Driver
```
wget http://www.waveshare.com/w/upload/2/24/LCD-show-160520.tar.gz

cd ./LCD-show
```

Resources
---
* http://www.runeaudio.com/
* http://www.banggood.com/3_2-Inch-TFT-LCD-Display-Module-Touch-Screen-For-Raspberry-Pi-B-B-A-p-1011516.html
* http://www.waveshare.com/wiki/3.2inch_RPi_LCD_(B)#Driver
* https://github.com/notro/rpi-firmware/issues/6
* http://www.circuitbasics.com/setup-lcd-touchscreen-raspberry-pi
* http://haifux.org/lectures/86-sil/kernel-modules-drivers/kernel-modules-drivers.html
* https://github.com/WilhelmThor/lcd32
