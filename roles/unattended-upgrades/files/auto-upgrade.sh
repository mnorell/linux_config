#!/bin/sh

echo ""
echo "$(date --iso-8601=seconds) Starting"

# Abort on metered connection
busctl get-property org.freedesktop.NetworkManager /org/freedesktop/NetworkManager org.freedesktop.NetworkManager Metered | grep 1
if [ $? -eq 0 ]; then
    echo "$(date --iso-8601=seconds) Metered connection, skipping"
    exit
fi

echo "$(date --iso-8601=seconds) Update APT"
apt update
apt -y upgrade

echo ""
echo "$(date --iso-8601=seconds) Update SNAP"
snap refresh

echo ""
echo "$(date --iso-8601=seconds) Update NPM"
npm update -g

#echo ""
#echo "$(date --iso-8601=seconds) Update GEM"
#gem update

echo ""
echo "$(date --iso-8601=seconds) Done"