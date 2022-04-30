#!/bin/bash
echo "Instalando lxc init ubuntu:18.04 vm1servidor1"
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
lxc init ubuntu:18.04 vm1servidor1 
lxc start vm1servidor1
