#!/bin/bash
echo ""
echo "Checking your linux release:"
echo ""
cat /etc/os-release
echo ""
echo "BOOTSTRAP:"
echo "----------------------------------------"
echo "update ssh config"
sudo su -
#sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
#sed -ri 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#\?\(PermitRootLogin\s*\).*$/\1 yes/' /etc/ssh/sshd_config
systemctl restart sshd
apt-get update -y
apt-get install vim git lshw nmap telnet gcc perl kernel-headers kernel-devel -y
/sbin/rcvboxadd setup
cp /tmp/hosts_to_copy /etc/