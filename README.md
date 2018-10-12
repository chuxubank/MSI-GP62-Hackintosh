# Hackintosh on MSI GP62 6QG-1071XCN
Here is something I used to install Hackintosh on my MSI GP62 6QG-1071XCN.

## Reference

- [tonymacx86](http://tonymacx86.com)
- [insanelymac](http://www.insanelymac.com)
- [远景](http://bbs.pcbeta.com)
- [idelta](https://www.idelta.info)
- [Pike's Universum](https://pikeralpha.wordpress.com)

## Install
- Command
[[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)

- UniBeast
[UniBeast: Install macOS High Sierra on Any Supported Intel-based PC](https://www.tonymacx86.com/threads/unibeast-install-macos-high-sierra-on-any-supported-intel-based-pc.235474/)

## Kexts

- [ACPIBatteryManager](https://github.com/RehabMan/OS-X-ACPI-Battery-Driver)
- [AirportBrcmFixup](https://github.com/acidanthera/AirportBrcmFixup)
- [AppleALC](https://github.com/vit9696/AppleALC)
- [AppleBacklightInjector](https://www.tonymacx86.com/threads/guide-laptop-backlight-control-using-applebacklightinjector-kext.218222/)
- [AtherosE2200Ethernet](https://github.com/Mieze/AtherosE2200Ethernet)
- [BrcmPatchRAM](https://github.com/RehabMan/OS-X-BrcmPatchRAM)
- [Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander)
- [CPUFriend](https://github.com/PMheart/CPUFriend)
- [FakePCIID](https://github.com/RehabMan/OS-X-Fake-PCI-ID)
- [FakeSMC](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/)
- [Lilu](https://github.com/acidanthera/Lilu)
- [USBInjectAll](https://github.com/RehabMan/OS-X-USB-Inject-All)
- [VoodooPS2Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)
- [WhateverGreen](https://github.com/acidanthera/WhateverGreen)

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

## Guides
- [tonymacx86](https://www.tonymacx86.com/forums/high-sierra-laptop-support.192/)
- [x] CPU
  - [Skylake HWP Enable](https://www.tonymacx86.com/threads/skylake-hwp-enable.214915/)
  - [[Guide] Native Power Management for Laptops](https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/)
  - [[原创内容] 开启完整HWP(SpeedShift)电源管理特性](http://bbs.pcbeta.com/viewthread-1737021-1-1.html)
- [x] Network
    - Wi-Fi
        - USB
          [TL-WN725N V2 Driver](https://www.tp-link.com/us/download/TL-WN725N_V2.html#Driver)

        - BCM94352Z

          [Broadcom WiFi/Bluetooth [Guide]](https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/)
- [x] dual-GPU
    - [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)
    - [[Guide] Using Clover to "hotpatch" ACPI](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/) #3
    - [Disabling NVIDIA Optimus card on all laptops](https://www.insanelymac.com/forum/forums/topic/295584-disabling-nvidia-optimus-card-on-all-laptops/)

## Tools
ACPI:
- [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/)

Monitor:
- [Intel® Power Gadget](https://software.intel.com/zh-cn/articles/intel-power-gadget-20)
- [IO Registry Explorer](https://developer.apple.com/download/more/)
- [HWSensors](https://github.com/kozlek/HWSensors)

NTFS Writer:
- [Mounty](http://enjoygineering.com/mounty/)

## Others

[Close SIP](https://www.tonymacx86.com/threads/explaining-os-x-el-capitan-security-changes-workarounds-and-current-information.170611/)

## iCloud

[FIX iMessage, Facetime, and App Store 2018 Tutorial](https://www.youtube.com/watch?v=JhA7e26dGgM)

[SMBIOS of Hackintosh Explained! -- Learn to Configure Config.plist](https://www.youtube.com/watch?v=bYELTlMcGsQ)



# Alert

Do NOT directly use the file provided, you need to change something so that it won't cause a problem.

The best way to make your own Hackintosh installed is following the guide list above step by step.