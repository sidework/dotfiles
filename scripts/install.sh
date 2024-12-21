#!/bin/bash

# Copy dotfiles
./copy.sh

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install build-essential
install chrome-gnome-shell
install curl
install file
install git
install htop
install nmap
install openvpn
install tree
install wget
install ecryptfs-utils
intsall cryptsetup

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y


#notes:
# fix dual boot time:
# timedatectl set-local-rtc 1


