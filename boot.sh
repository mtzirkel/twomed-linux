#!/bin/bash

set -e

ascii_art='  _                                   _       _ _
 | |___      _____  _ __ ___   ___  __| |     | (_)_ __  _   ___  __
 | __\ \ /\ / / _ \|  _   _ \ / _ \/ _  |_____| | |  _ \| | | \ \/ /
 | |_ \ V  V / (_) | | | | | |  __/ (_| |_____| | | | | | |_| |>  <
  \__| \_/\_/ \___/|_| |_| |_|\___|\__,_|     |_|_|_| |_|\__,_/_/\_\
'

echo -e "$ascii_art"
echo "=> twomed-linux is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning twomed-linux..."
rm -rf ~/.local/share/omakub
git clone https://github.com/twomed/twomed-linux.git ~/.local/share/omakub >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
	cd ~/.local/share/omakub
	git fetch origin "${OMAKUB_REF:-master}" && git checkout "${OMAKUB_REF:-master}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
