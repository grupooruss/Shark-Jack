#!/bin/bash
# Shark Jack script: Detect RDP traffic

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar tráfico RDP
tcpdump -i eth0 port 3389 -w /root/loot/rdp_traffic.pcap

LED FINISH