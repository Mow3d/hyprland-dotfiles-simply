# Mis Dotfiles de Hyprland

Este repositorio contiene el respaldo de mi configuración de Hyprland y otras herramientas de mi entorno de escritorio en Arch Linux.

## ¿Qué hay aquí?

Este repositorio guarda las configuraciones de:
- `hypr` / `hyprland`
- `waybar`
- `kitty`
- `mako`
- `rofi` / `wofi`
- `yazi`
- `neofetch`
- Y otras herramientas de personalización.

## Instalación Rápida

Para restaurar esta configuración en una nueva instalación de sistema, sigue estos pasos.

### 1. Requisitos Previos

Asegúrate de tener `git` instalado en tu sistema. En Arch Linux:
```bash
sudo pacman -S git
```

### 2. Clonar el Repositorio

Clona este repositorio en tu directorio de inicio (`~`):
```bash
git clone https://github.com/Mow3d/hyprland-dotfiles-simply.git
```

### 3. Ejecutar el Script de Instalación

Navega a la carpeta que acabas de clonar y ejecuta el script `install.sh`:
```bash
cd hyprland-dotfiles-simply
./install.sh
```

### ¡Listo!

El script creará enlaces simbólicos desde este repositorio a tu carpeta `~/.config`. Esto significa que todas las configuraciones se aplicarán inmediatamente.

**Gestión a futuro:** Cualquier cambio que hagas en los archivos de `~/.config` se reflejará en la carpeta clonada. Para guardar esos cambios en GitHub, solo tendrás que usar `git add`, `git commit` y `git push` desde la carpeta del repositorio.
