Este script guardará las direcciones IP de las posibles instalaciones de phpMyAdmin en un archivo llamado phpmyadmin.txt en el directorio /root/loot.


#!/bin/bash
# Shark Jack script: Detect phpMyAdmin installations

LED SETUP
# Configurar la interfaz de red en modo estático
NETMODE STATIC
LED ATTACK

# Intenta encontrar instalaciones de phpMyAdmin en la subred local
for ip in $(seq 1 254); do
  response=$(curl -s http://192.168.1.$ip/phpmyadmin/)
  if echo "$response" | grep -q 'phpMyAdmin'; then
    echo "Possible phpMyAdmin installation found at 192.168.1.$ip" >> /root/loot/phpmyadmin.txt
  fi
done

LED FINISH
