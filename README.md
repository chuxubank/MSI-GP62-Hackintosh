# Hackintosh on MSI GP62 6QG-1071XCN
Here is something I used to install Hackintosh on my MSI GP62 6QG-1071XCN.

## Reference

- [tonymacx86](http://tonymacx86.com)
- [insanelymac](http://www.insanelymac.com)
- [远景](http://bbs.pcbeta.com)
- [idelta](https://www.idelta.info)

## Install(Choose one way)

### Under macOS

- Command
[[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)

- UniBeast
[UniBeast: Install macOS High Sierra on Any Supported Intel-based PC](https://www.tonymacx86.com/threads/unibeast-install-macos-high-sierra-on-any-supported-intel-based-pc.235474/)

### Under Windows
- [远景](bbs.pcbeta.com)

## Clover 
- [Clover EFI bootloader](http://sourceforge.net/projects/cloverefiboot/)
- [Clover Configurator](http://mackie100projects.altervista.org)
- [Wiki](https://clover-wiki.zetam.org/home)

## ACPI
- [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)
- [[Guide] Patching LAPTOP DSDT/SSDTs](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)
- [[Guide] Using Clover to "hotpatch" ACPI](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/)
- [RM Hotpatch](https://github.com/RehabMan/OS-X-Clover-Laptop-Config/tree/master/hotpatch)
- [Hotpatch简介](http://bbs.pcbeta.com/viewthread-1741377-1-2.html)

## Base
- [FakeSMC](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/)


## Features

- [x] PS2 Controller
      - [Voodoo PS/2 Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)

In VoodooPS2Keyboard.kext:

```xml
<key>Custom ADB Map</key>
<array>
<string>;Items must be strings in the form of scanfrom=adbto (in hex)</string>
<string>e077=6b;use fu+down to decrease blacklight level</string>
<string>e078=71;use fu+up to increase blacklight level</string>
</array>
<key>Custom PS2 Map</key>
<array>
<string>;Items must be strings in the form of scanfrom=scanto (in hex)</string>
<string>e017=0;disable power key and fix sleep problem wtf?</string>
<string>e027=0;disable discrete fnkeys toggle</string>
<string>e028=0;disable discrete trackpad toggle</string>
</array>
```

- [x] Battery
    - [ACPIBatteryManager](https://github.com/RehabMan/OS-X-ACPI-Battery-Driver)
- [x] Blacklight
  - [[Guide] Laptop backlight control using AppleBacklightInjector.kext](https://www.tonymacx86.com/threads/guide-laptop-backlight-control-using-applebacklightinjector-kext.218222/)
- [x] Sound
    - [Lilu](https://github.com/vit9696/Lilu)
    - [AppleALC](https://github.com/vit9696/AppleALC)
    - [Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander)
- [x] Network
    - Wi-Fi
        - USB
          [TL-WN725N V2 Driver](https://www.tp-link.com/us/download/TL-WN725N_V2.html#Driver)

        - BCM94352Z

          [Broadcom WiFi/Bluetooth [Guide]](https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/)
    - Ethernet
      [AtherosE2200Ethernet](https://github.com/Mieze/AtherosE2200Ethernet)
- [x] dual-GPU
    - [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)
    - [[Guide] Using Clover to "hotpatch" ACPI](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/) #3
    - [Disabling NVIDIA Optimus card on all laptops](https://www.insanelymac.com/forum/forums/topic/295584-disabling-nvidia-optimus-card-on-all-laptops/)

## Apps

Monitor:
- [Intel® Power Gadget](https://software.intel.com/zh-cn/articles/intel-power-gadget-20)
- [IO Registry Explorer](https://developer.apple.com/download/more/)

NTFS Writer:
- [Mounty](http://enjoygineering.com/mounty/)

## Others

[Close SIP](https://www.tonymacx86.com/threads/explaining-os-x-el-capitan-security-changes-workarounds-and-current-information.170611/)