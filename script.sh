#!/bin/sh
./chmod -R 777 .
mkdir -p /var/home/bin
export HOME=/var/home
export PATH=/usr/bin:/bin:/sbin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Library/Developer/CommandLineTools/usr/bin:
export PATH=$PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX10.13.sdk/usr/bin
export PATH=$PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/bin

mkdir ~/Downloads
cp .bashrc ~/.bashrc
cp -R . $HOME/bin
echo "Starting bash with basic enviroment..."
cd ~
bash -i

#exec 3<>/dev/tcp/10.12.13.3/4260; cat <&3 > /tmp/file