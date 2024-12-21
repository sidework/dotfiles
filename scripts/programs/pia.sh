#!/bin/bash

echo "☁️ Installing PIA"
curl -fsSL https://installers.privateinternetaccess.com/download/pia-linux-3.6.1-08339.run
sudo chmod +x pia-linux-3.6.1-08339.run
pia-linux-3.6.1-08339.run
rm pia-linux-3.6.1-08339.run

