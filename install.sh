#!/bin/bash
# Script para enlazar simbólicamente los archivos de configuración (dotfiles).

# Directorio de este script (donde están todos los dotfiles)
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Directorio de destino para las configuraciones
CONFIG_DIR="$HOME/.config"

echo "Iniciando la configuración de dotfiles..."
echo "Directorio de origen: $SCRIPT_DIR"
echo "Directorio de destino: $CONFIG_DIR"
echo ""

# Crear el directorio de destino si no existe
mkdir -p "$CONFIG_DIR"

# Buscar todos los directorios en la carpeta del script y crear un enlace para cada uno.
for dir in "$SCRIPT_DIR"/*/; do
    # Obtener el nombre base del directorio (ej. 'hypr', 'kitty')
    config_name=$(basename "$dir")

    # Omitir la carpeta .git
    if [ "$config_name" == ".git" ]; then
        continue
    fi

    source_path="$dir"
    target_path="$CONFIG_DIR/$config_name"

    echo "Enlazando $config_name..."
    
    # Eliminar cualquier archivo, carpeta o enlace que ya exista en el destino
    rm -rf "$target_path"

    # Crear el nuevo enlace simbólico
    ln -s "$source_path" "$target_path"
done

echo ""
echo "✅ ¡Todas las configuraciones han sido enlazadas con éxito!"
