#!/bin/bash

# Chemins des fichiers
VDI_PATH="/home/aumartin/sgoinfre/Born2beRoot/Born2beRoot/Born2beRoot.vdi"
SIGNATURE_FILE="/home/aumartin/Documents/Born2beRoot/signature.txt"

# Générer le hash pour le fichier .vdi
VDI_HASH=$(shasum "$VDI_PATH" | awk '{print $1}')

# Lire le hash dans signature.txt
SIGNATURE_HASH=$(cat "$SIGNATURE_FILE")

# Comparer les deux hash
if [ "$VDI_HASH" == "$SIGNATURE_HASH" ]; then
  echo "Les signatures correspondent."
else
  echo "Les signatures ne correspondent pas."
fi

