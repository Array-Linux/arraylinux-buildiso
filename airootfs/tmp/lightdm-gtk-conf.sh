#!/bin/bash

rm /mnt/etc/lightdm/lightdm-gtk-greeter.conf
cp /tmp/lightdm-gtk-greeter.conf /mnt/etc/lightdm/lightdm-gtk-greeter.conf

cp /usr/share/pixmaps/arraylinux-logo.png /mnt/usr/share/pixmaps/arraylinux-logo.png
cp /usr/share/pixmaps/arraylinux-wallpaper.png /mnt/usr/share/pixmaps/arraylinux-wallpaper.png

cp /usr/share/wallpapers/arraylinux-wallpaper.png /mnt/usr/share/wallpapers/arraylinux-wallpaper.png

cp -r /usr/share/themes/arraylinux-theme /mnt/usr/share/themes/arraylinux-theme

rm /mnt/home/*/Desktop/Install_System.desktop

mkdir /mnt/home/*/Documents
mkdir /mnt/home/*/Downloads
mkdir /mnt/home/*/Videos
mkdir /mnt/home/*/Pictures