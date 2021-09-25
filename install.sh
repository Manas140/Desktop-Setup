#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cr}"
printf "${cg}[*] This Config Replaces Your Previous Config, Make A Backup Before Running It.\n"

printf "${cb}[*] Proceeding Here Will Replace Your Config(If It's There)\n"
printf "${cr}"
read -p "[*] DO YOU WANT TO PROCEED [Y/N] " allowed

case $allowed in
  Y*|y*)
    printf "${cb} [*] Copying Configs\n"
    cp -r config/* ~/.config
    cp -r home/.*rc ~/.
    printf "${cg} [*] Configs Copied\n"
    printf "${cb} [*] Copying Fonts\n"
    cp -r fonts/* ~/.fonts
    printf "${cg} [*] Fonts Copied\n"
    printf "${cb} [*] Copying Wallpapers\n"
    cp -r walls/* ~/Pictures/Wallpapers
    printf "${cg} [*] Wallpapers Copied\n"
    printf "${cg}[*] Dotfiles Installed\n";;
  *) printf "${cr}[-] Aborting!\n";;
esac
