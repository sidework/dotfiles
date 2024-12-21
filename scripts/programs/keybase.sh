#!/bin/bash

echo "😊 Installing Keybase"
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb
rm ./keybase_amd64.deb
run_keybase

#key is 656D16C7
#apt-key list
#fix with:
#apt-key export 656D16C7 | sudo gpg --dearmour -o /usr/share/keyrings/keybase.gpg
#add to /etc/apt/sources.list.d/keybase.list 
#[arch=amd64 signed-by=/usr/share/keyrings/keybase.gpg]
