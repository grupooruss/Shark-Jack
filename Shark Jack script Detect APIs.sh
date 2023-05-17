#!/bin/bash
# Shark Jack script: Detect APIs

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar posibles solicitudes de API
tcpdump -i eth0 -A -l | grep -iE "GET /api/|POST /api/" >> /root/loot/api_traffic.txt

LED FINISH
