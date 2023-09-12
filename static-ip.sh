#!/bin/bash

#Önce mevcut interfaces dosyasının yedeğini alalım
mv /etc/network/interfaces /etc/network/interfaces.bak

#Kullanıcıdan gerekli bilgileri al
read -p "IP Address: " address
read -p "Netmask: " netmask
read -p "Gateway: " gateway
read -p "DNS Nameservers: " dns_nameservers

#Yeni interfaces dosyasını oluştur
cat <<EOF > /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto ens32
iface ens32 inet static
        address $address
        netmask $netmask
        gateway $gateway
        dns-nameservers $dns_nameservers
EOF

#Yeni dosya oluşturuldu, şimdi yeniden başlat
reboot
