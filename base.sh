
ln -sf /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=trq" >> /etc/vconsole.conf
echo "_hostname_" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 sector.localdomain _hostname_" >> /etc/hosts



pacman -S grub efibootmgr networkmanager network-manager-applet dialog linux-headers linux-zen-headers mtools dosfstools base-devel bluez bluez-utils alsa-utils pulseaudio bash-completion tlp rsync reflector xdg-utils xdg-user-dirs wireless_tools wpa_supplicant inetutils grub-btrfs  xf86-video-amdgpu # nvidia nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable tlp 



