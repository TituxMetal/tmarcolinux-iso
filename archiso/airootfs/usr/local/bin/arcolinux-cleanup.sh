#!/bin/bash

rm -f /etc/sudoers.d/g_wheel
rm -rf /usr/share/backgrounds/xfce
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -r /etc/systemd/system/etc-pacman.d-gnupg.mount
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio
pacman -Rcns --noconfirm xfce4
pacman -Rcns --noconfirm xfce4-goodies
pacman -Rcns --noconfirm arcolinux-xfce-git
pacman -Rcns --noconfirm arcolinux-local-xfce4-git
pacman -Rcns --noconfirm arcolinux-local-applications-git
pacman -Rns --noconfirm $(pacman -Qdtq)
rm /usr/local/bin/arcolinux-all-cores.sh
# rm /usr/local/bin/arcolinux-cleanup.sh
