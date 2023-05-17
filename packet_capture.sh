Captura tráfico de red en la interfaz ethernet y guarda los resultados en un archivo .pcap.

#!/bin/bash
# Shark Jack script: Packet Capture
LED SETUP
# Configurar la interfaz de red en modo NAT
NETMODE NAT
LED ATTACK
# Iniciar la captura de paquetes
tcpdump -i eth0 -w /root/loot/capture.pcap
LED FINISH
