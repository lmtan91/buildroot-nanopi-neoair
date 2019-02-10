# buildroot-nanopi-neoair
1. How to configure wifi  
modprobe brcmfmac  
ifconfig wlan0 up  
wpa_passphrase NETGEAR44 jollysky340 > /etc/wpa_supplicant.conf  
wpa_supplicant -B -i wlan0 -D wext -c /etc/wpa_supplicant.conf  

2. How to configure bluetooth  
modprobe brcmfmac  
echo " " > /dev/ttyS3  
devmem2 0x1f00060 b 1  
echo 205 > /sys/class/gpio/export  
echo out > /sys/class/gpio/gpio205/direction  
echo 0 > /sys/class/gpio/gpio205/value  
echo 1 > /sys/class/gpio/gpio205/value  
hciattach /dev/ttyS3 bcm43xx 115200 flow bdaddr 43:29:B1:55:01:01  
#hciconfig hci0 up

