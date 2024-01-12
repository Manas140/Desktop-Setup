#!/bin/sh

#variables
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

printf "${cg}Proceeding further would replace all of the current configs, consider making a backup.\n"
printf "${cr}"
read -p "Do you wish to proceed? [y/n]: " allowed
dir="$HOME/.config $HOME/.fonts"

case $allowed in
  Y*|y*)
    for a in $dir; do 
      mkdir -p $a 
    done
    printf "${cg}Copying Dotfiles\n"
    printf "${cb}  Copying Configs\n"
    cp -ra cfg/. ~/.config
    cp -ra home/. ~/
    printf "${cg}    Configs Copied\n"
    printf "${cb}  Copying Fonts\n"
    cp -ran fonts/. ~/.fonts 2> /dev/null
    printf "${cg}    Fonts Copied\n"
    printf "${cb}  Copying Scripts\n"
    cp -ra bin/. ~/.local/bin/
    printf "${cg}    Scripts Copied\n"
    printf "${cg}Dotfiles Installed\n";;
  *) printf "${cr}Aborting!\n";;
esac
