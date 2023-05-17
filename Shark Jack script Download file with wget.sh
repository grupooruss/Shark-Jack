#!/bin/bash
# Shark Jack script: Download file with wget

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Define your URL
url="http://your_url_here"

# Use wget to download the file
wget "$url" -P /root/loot/

LED FINISH