#!/bin/bash
# Shark Jack script: ARP Scan

LED SETUP
# Configurar la interfaz de red en modo estático
NETMODE STATIC
LED ATTACK

# Realizar un escaneo ARP en la subred local
for ip in $(seq 1 254); do
  arping -c 1 192.168.1.$ip | grep "reply" | awk '{print $2, $4}' >> /root/loot/arp_scan.txt &
done

LED FINISH