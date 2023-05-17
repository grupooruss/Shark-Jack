#!/bin/bash
# Shark Jack script: Detect Port 445

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar tráfico en el puerto 445
tcpdump -i eth0 -n 'port 445' >> /root/loot/port_445_traffic.txt

LED FINISH

