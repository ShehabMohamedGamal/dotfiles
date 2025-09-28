
hyperland catppuccin mocha flamingo rice with nerd apple font 

first you need to install arch linux 

use arch install with zen-kernel, minimal desktop, pipewire , btrfs  and zram

add also the linux-lts-kernel for stability 

install packages

```sh
sudo pacman -S base-devel pacman-contrib wget hyprland hypridle hyprlock hyprcursor hyprgraphics hyprland-protocols hyprland-qt-support hyprland-qtutils hyprpolkitagent hyprutils xdg-user-dirs xdg-utils xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk nemo kitty cliphist rofi-wayland playerctl network-manager-applet zsh fzf zoxide xed evence nwg-look qt5ct qt6ct kvantum kvantum-qt5 qt5-wayland qt6-wayland brightnessctl gnome-keyring swaync sddm firefox neovim nemo-engrampa engrampa nemo-preview vlc aquamarine uwsm bat blueman btop fastfetch ffmpegthumbnailer nano swww helix
```

install paru :
https://github.com/Morganamilo/paru

```sh
paru -S catppuccin-sddm-theme-mocha nerd-fonts-apple kvantum-theme-catppuccin-git sddm-conf xviewer breezex-cursor-theme swayosd-gtk3 app2unit-git pyprland betterbird-bin whatsapp-linux-desktop-bin freedownloadmanager brave-bin
```

gtk theme

https://github.com/VanillaDaFur/catppuccin-gtk

downlaod the mocha theme and copy it to /usr/share/themes/

follow the next tutorial and install the bluegrey icons

https://github.com/catppuccin/papirus-folders?tab=readme-ov-file

NVIDIA

i already have env section edit it if you need to

https://wiki.archlinux.org/title/NVIDIA

https://wiki.archlinux.org/title/Hardware_video_acceleration (you might need to add yourself to the video and render groups)



Gaming

https://github.com/lutris/docs/blob/master/InstallingDrivers.md

```sh
winetricks dxvk
```

```sh
paru -S heroic-games-launcher-bin
```

hyprland plugins

https://github.com/hyprwm/hyprland-plugins/tree/main/hyprexpo

https://github.com/VirtCode/hypr-dynamic-cursors

useful apps

FS tools

```sh
sudo pacman -S btrfs-progs exfat-utils ntfs-3g 
```


snapshots

```sh
paru -S timeshift timeshift-autosnap  
```



vesktop for discord

```sh
vesktop-bin
```
