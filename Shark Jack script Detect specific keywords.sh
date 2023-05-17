#!/bin/bash
# Shark Jack script: Detect specific keywords

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Define your keyword
keyword="your_keyword_here"

# Iniciar captura de paquetes y buscar la palabra clave
tcpdump -i eth0 -A -l | grep -i "$keyword" >> /root/loot/keyword_traffic.txt

LED FINISH
