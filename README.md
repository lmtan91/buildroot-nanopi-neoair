# buildroot-nanopi-neoair
1. How to configure wifi
modprobe brcmfmac
ifconfig wlan0 up
wpa_passphrase NETGEAR44 jollysky340 > /etc/wpa_supplicant.conf
wpa_supplicant -B -i wlan0 -D wext -c /etc/wpa_supplicant.conf

