#!/bin/bash

adduser dietpi
usermod -aG sudo dietpi

# Grant sudo without password
echo 'dietpi ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
