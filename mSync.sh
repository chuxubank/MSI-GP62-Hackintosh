#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
sudo diskutil mount EFI
rm -r $basepath/CLOVER
cp -r /Volumes/EFI/EFI/CLOVER $basepath
cd $basepath/CLOVER
cp config.plist config-my.plist
plutil -replace Boot.Arguments -string "" config.plist
plutil -remove SMBIOS config.plist
plutil -insert SMBIOS -xml "<dict/>" config.plist
plutil -insert SMBIOS.ProductName -string "MacBookPro13,1" config.plist
plutil -lint config.plist
echo "Sync finish."
