#!/bin/bash
mkdir -p /srv/cspa
apt install -y wireguard
apt-get install -y resolvconf
chmod +x ./install
./install
systemctl start wg-quick@wgs
# systemctl enable wg-quick@wgs
chmod 777 /srv/cspa -R
cd /srv/cspa
git clone "http://10.8.0.21:8929/root/cspa_install_1.git"
chmod +x /srv/cspa/phase1
# ./srv/cspa/phase1
