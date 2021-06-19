#!/bin/bash
pacman -S xorg sddm plasma kde-applications packagekit-qt5 firefox 
systemctl enable sddm
xdg-settings set default-web-browser firefox.desktop 

