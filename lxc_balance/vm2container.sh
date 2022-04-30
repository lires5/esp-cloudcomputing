#!/bin/bash
sudo gpasswd -a vagrant lxd
sudo lxd init yes 192.168.1.11 yes no vm2 192.168.1.10 yes vagrant yes enter no
