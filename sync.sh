#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
sudo diskutil mount EFI
rm -r $basepath/CLOVER
cp -r /Volumes/EFI/EFI/CLOVER $basepath
echo "Sync finish."