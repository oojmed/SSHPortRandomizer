#!/bin/sh

sed -i "s/Port $(cat /etc/ssh/sshd_config | grep "^Port" | cut -d' ' -f 2)/Port $(shuf -i 1024-49151 -n 1)/g" /etc/ssh/sshd_config

echo $(cat /etc/ssh/sshd_config | grep "^Port" | cut -d' ' -f 2)
