#!/bin/bash

# Comprobar conexión a Internet
ping -c 1 -q google.com &>/dev/null
if [ $? -eq 0 ]; then
    echo "Conexión a Internet detectada. Ejecutando 'apt-get update'..."
    apt-get update
    echo "'apt-get update' se completó."
else
    echo "No hay conexión a Internet. 'apt-get update' no se ejecutará."
fi
