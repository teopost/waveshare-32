mkdir /etc/X11/xorg.conf.d
rm /boot/overlays/waveshare32b.dtbo 
rm /etc/X11/xorg.conf.d/99-calibration.conf
rm usr/share/X11/xorg.conf.d/99-fbturbo.conf
cp ./cmdline.txt.ori /boot/cmdline.txt
cp ./config.txt.ori /boot/cmdline.txt
rm /etc/inittab

echo "fai il reboot"
