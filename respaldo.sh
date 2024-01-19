#!/bin/bash

# Dirección IP y usuario del servidor 2
servidor2="kali@192.168.20.5"

# Directorio de origen en el servidor 1
origen="/home/kali/Documents/Backup/Segundo_ejercicio/"

# Directorio de destino en el servidor 2
destino="/home/kali/Documents/Backup/"

# Crear un archivo comprimido y transferirlo al servidor 2 usando tar y ssh
tar -czvf - -C "$origen" . | ssh "$servidor2" "cat > \"$destino/respaldo_$(date +\%Y\%m\%d_\%H\%M\%S).tar.gz\""

# Verificar si la transferencia se realizó con éxito
if [ $? -eq 0 ]; then
  echo "Transferencia de archivos exitosa."
else
  echo "Error al transferir archivos."
fi
