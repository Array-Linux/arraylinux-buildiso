#!/bin/bash

if [ -f /mnt/etc/lightdm/lightdm.conf ]; then
    rm /mnt/etc/lightdm/lightdm.conf
fi
cp /tmp/lightdm.conf /mnt/etc/lightdm/lightdm.conf

if [ -f /mnt/etc/lightdm/lightdm-gtk-greeter.conf ]; then
    rm /mnt/etc/lightdm/lightdm-gtk-greeter.conf
fi

cp /tmp/lightdm-gtk-greeter.conf /mnt/etc/lightdm/lightdm-gtk-greeter.conf

cp /usr/share/pixmaps/arraylinux-logo.png /mnt/usr/share/pixmaps/arraylinux-logo.png
cp /usr/share/pixmaps/arraylinux-wallpaper.png /mnt/usr/share/pixmaps/arraylinux-wallpaper.png

cp /usr/share/wallpapers/arraylinux-wallpaper.png /mnt/usr/share/wallpapers/arraylinux-wallpaper.png

cp -r /usr/share/themes/arraylinux-theme /mnt/usr/share/themes/arraylinux-theme
if [ -f /mnt/home/*/Desktop/Install_System.desktop ]; then
    rm /mnt/home/*/Desktop/Install_System.desktop
fi

mkdir /mnt/home/*/Documents
mkdir /mnt/home/*/Downloads
mkdir /mnt/home/*/Videos
mkdir /mnt/home/*/Pictures

sed -i 's/exec-once/#exec-once/' /mnt/home/*/.config/hypr/hyprland.conf