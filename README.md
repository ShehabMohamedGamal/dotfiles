
hyperland catppuccin mocha flamingo rice with nerd apple font 

first you need to install arch linux 

use arch install with zen-kernel, minimal desktop, pipewire , btrfs  and zram

add also the linux-kernel for stability 

install packages

```sh
sudo pacman -S base-devel pacman-contrib wget hyprland hypridle hyprlock hyprcursor hyprgraphics hyprland-protocols hyprland-qt-support hyprland-qtutils hyprpaper hyprpolkitagent hyprutils xdg-user-dirs xdg-utils xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk nemo kitty cliphist rofi-wayland playerctl network-manager-applet zsh fzf zoxide xed xreader nwg-look qt5ct qt6ct kvantum kvantum-qt5 qt5-wayland qt6-wayland brightnessctl gnome-keyring swaync sddm firefox neovim nemo-fileroller vlc aquamarine uwsm bat blueman btop fastfetch ffmpegthumbnailer nano
```

install paru :
https://github.com/Morganamilo/paru

```sh
paru -S catppuccin-sddm-theme-mocha nerd-fonts-apple kvantum-theme-catppuccin-git sddm-conf xviewer breezex-cursor-theme swayosd-gtk3 app2unit-git
```

gtk theme

https://github.com/VanillaDaFur/catppuccin-gtk

downlaod the mocha theme and copy it to /usr/share/themes/

follow the next tutorial and install the bluegrey icons

https://github.com/catppuccin/papirus-folders?tab=readme-ov-file

NVIDIA

i already have env for you

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


useful apps

```sh
sudo pacman -S btrfs-progs exfat-utils ntfs-3g timeshift
```



```sh
paru -S timeshift-autosnap pmount vesktop-bin
```

pmount for mounting without root pass

vesktop for discord
