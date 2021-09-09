#!/bin/bash

echo "Configure privoxy trust."
sudo cp privoxy/config /etc/privoxy/
sudo cp privoxy/trust /etc/privoxy/
sudo systemctl restart privoxy
systemctl status privoxy
echo "Privoxy configured."
