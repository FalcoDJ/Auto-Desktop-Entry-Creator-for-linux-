#!/bin/bash

# 0-----------------------0
# | Auto .desktop creator |
# 0-----------------------0
# All files will be automatically outputed to ~/Desktop
# Run this script like so:
#   ./create_desktop_file.sh NameOfApp Version ExecutablePath IconPath

cd $HOME/.local/share/applications

rm -Rf $1.desktop
touch $1.desktop

echo "[Desktop Entry]"   >> $1.desktop
echo "Encoding=UTF-8"    >> $1.desktop
echo "Version=$2"        >> $1.desktop
echo "Type=Application"  >> $1.desktop
echo "Terminal=false"    >> $1.desktop
echo "Exec=$3"           >> $1.desktop
echo "Name=$1"           >> $1.desktop
echo "Icon=$4"           >> $1.desktop

chmod u+x $1.desktop