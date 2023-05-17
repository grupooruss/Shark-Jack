#!/bin/bash
# Shark Jack script: Detect .dbx files

LED SETUP
# Configurar la interfaz de red en modo TRANSPARENT
NETMODE TRANSPARENT
LED ATTACK

# Montar el volumen SMB (este es un ejemplo, necesitarías reemplazarlo con tus propios detalles)
mount -t cifs //192.168.1.100/shared /mnt -o username=user,password=pass

# Buscar archivos .dbx
find /mnt -name '*.dbx' >> /root/loot/dbx_files.txt

LED FINISH
