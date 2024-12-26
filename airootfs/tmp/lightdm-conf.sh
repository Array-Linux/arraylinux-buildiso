#!/bin/bash
if [ -f /mnt/etc/lightdm/lightdm.conf ]; then
    rm /mnt/etc/lightdm/lightdm.conf
fi
cp /tmp/lightdm.conf /mnt/etc/lightdm/lightdm.conf
