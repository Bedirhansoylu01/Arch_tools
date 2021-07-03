#!/bin/bash


echo -e "
\e[1;\e[1;94m>>>\e[1;0m Welcome to Arch KDE/plasma desktop environment installation \e[1;94m<<<\e[1;0m \n
        Please select your GPU prefrences for open-source driver
        \e[1;33m0-\e[0mI don't want to open-source GPU driver
        \e[1;31m1-\e[0mAMD_Radeon
        \e[1;32m2-\e[0mNvida
        \e[1;34m3-\e[0mIntel"
read -p ">>your option :" GPU

case $GPU in
1)
    GPUD=xf86-video-amdgpu
    ;;
2)
    GPUD=xf86-video-nouveau
    ;;
3)
    GPUD=xf86-video-intel
    ;;
esac

sudo pacman -S xorg sddm plasma kde-applications packagekit-qt5 $GPUD firefox

sudo systemctl enable sddm
sudo xdg-settings set default-web-browser firefox.desktop
