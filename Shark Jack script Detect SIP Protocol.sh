Este script capturará paquetes de la interfaz eth0 y buscará tráfico en el puerto 5060, guardando los resultados en un archivo llamado sip_traffic.txt en el directorio /root/loot.

#!/bin/bash
# Shark Jack script: Detect SIP Protocol

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar tráfico SIP
tcpdump -i eth0 -n 'port 5060' >> /root/loot/sip_traffic.txt

LED FINISH
