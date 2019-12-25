#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
EFI=$(mount | grep "/Volumes/EFI")
if [[ "$EFI" == "" ]]
then
    sudo diskutil mount EFI
fi
rm -r $basepath/CLOVER
cp -r /Volumes/EFI/EFI/CLOVER $basepath
cd $basepath/CLOVER
cp config.plist config-my.plist
plutil -replace Boot.Arguments -string "agdpmod=vit9696" config.plist
plutil -remove SMBIOS config.plist
plutil -insert SMBIOS -xml "<dict/>" config.plist
plutil -insert SMBIOS.ProductName -string "MacBookPro13,3" config.plist
plutil -lint config.plist
echo "Sync finish."
