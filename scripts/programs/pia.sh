#!/bin/bash

echo "☁️ Installing PIA"
wget https://installers.privateinternetaccess.com/download/pia-linux-3.6.1-08339.run
sudo chmod +x pia-linux-3.6.1-08339.run
pia-linux-3.6.1-08339.run
rm pia-linux-3.6.1-08339.run

