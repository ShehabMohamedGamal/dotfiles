
# Dotfiles

Hyprland Catppuccin Mocha Flamingo rice with Nerd Apple font.

---

## Installation

First, install [Arch Linux](https://archlinux.org/) using arch install with:
- Zen kernel
- Minimal desktop setup
- PipeWire
- Btrfs
- ZRAM

Also install the **linux-lts kernel** for stability.

---

## Packages

```sh
sudo pacman -S base-devel pacman-contrib wget hyprland hypridle hyprlock hyprcursor hyprgraphics \
hyprland-protocols hyprland-qt-support hyprland-qtutils hyprpolkitagent hyprutils \
xdg-user-dirs xdg-utils xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk \
nemo kitty cliphist rofi-wayland playerctl network-manager-applet zsh fzf zoxide \
xed evince nwg-look qt5ct qt6ct kvantum kvantum-qt5 qt5-wayland qt6-wayland brightnessctl \
gnome-keyring swaync sddm firefox neovim nemo-engrampa engrampa nemo-preview vlc \
aquamarine uwsm bat blueman btop fastfetch ffmpegthumbnailer nano swww helix
```

## Paru

Install [paru](https://github.com/Morganamilo/paru):

```sh
paru -S catppuccin-sddm-theme-mocha nerd-fonts-apple kvantum-theme-catppuccin-git sddm-conf \
xviewer breezex-cursor-theme swayosd-gtk3 app2unit-git pyprland betterbird-bin \
whatsapp-linux-desktop-bin freedownloadmanager brave-bin
```

---

## Theming

- **GTK Theme**: [Catppuccin GTK](https://github.com/VanillaDaFur/catppuccin-gtk)  
    Download the **Mocha** theme and copy it to `/usr/share/themes/`
    
- **Icons**: [Catppuccin Papirus Folders](https://github.com/catppuccin/papirus-folders)  
    Follow the instructions to install Bluegrey icons.
    

---

## NVIDIA

I already have an env section configured, edit if needed:

- [NVIDIA (Arch Wiki)](https://wiki.archlinux.org/title/NVIDIA)
    
- [Hardware Video Acceleration](https://wiki.archlinux.org/title/Hardware_video_acceleration)  
    

---

## Gaming

- [Lutris Drivers Guide](https://github.com/lutris/docs/blob/master/InstallingDrivers.md)
    

```sh
winetricks dxvk
paru -S heroic-games-launcher-bin
```

---

## Hyprland Plugins

- [Hyprexpo](https://github.com/hyprwm/hyprland-plugins/tree/main/hyprexpo)
    
- [Hypr Dynamic Cursors](https://github.com/VirtCode/hypr-dynamic-cursors)
    

---

## Useful Apps

**File system tools:**

```sh
sudo pacman -S btrfs-progs exfat-utils ntfs-3g
```

**Snapshots:**

```sh
paru -S timeshift timeshift-autosnap
```

**Discord (Vesktop):**

```sh
paru -S vesktop-bin
```

---

## Inspiration

This configuration is based on:

- [typecraft-dev](https://github.com/typecraft-dev/dotfiles)
    
- [dreamsofcode](https://github.com/dreamsofcode-io/dotfiles)
    
- [dreamsofautonomy](https://github.com/dreamsofautonomy/dotfiles)
    
- The packages' example files
    
