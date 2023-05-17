Este script captura paquetes de la interfaz eth0, busca paquetes con un TTL de 128, extrae la dirección IP de origen de esos paquetes, elimina duplicados y guarda las direcciones IP en un archivo llamado windows_xp.txt en el directorio /root/loot.


#!/bin/bash
# Shark Jack script: Detect Windows XP hosts

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar paquetes con TTL=128
tcpdump -i eth0 -v -n 'ip[8] == 128' | awk '{print $3}' | cut -d "." -f 1-4 | sort -u >> /root/loot/windows_xp.txt

LED FINISH
