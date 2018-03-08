# Hackintosh on MSI GP62 6QG
[TOC]

## Reference

- [tonymacx86](http://tonymacx86.com)
- [insanelymac](http://www.insanelymac.com)
- [远景](bbs.pcbeta.com)
- [idelta](https://www.idelta.info)

## Install

### Under macOS

#### Command
[[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)

#### UniBeast
[UniBeast: Install macOS High Sierra on Any Supported Intel-based PC](https://www.tonymacx86.com/threads/unibeast-install-macos-high-sierra-on-any-supported-intel-based-pc.235474/)

### Under Windows
[远景](bbs.pcbeta.com)

## Clover 

Download:
- [Clover EFI bootloader](http://sourceforge.net/projects/cloverefiboot/)


- [Clover Configurator](http://mackie100projects.altervista.org)

## Features
- [x] PS2 Controller
  - [Voodoo PS/2 Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)

```xml
<key>Custom ADB Map</key>
<array>
	<string>e009=83;Dell Support to Launchpad</string>
	<string>e0f1=71;Call brightens up w RKA1 for special mode (was =90)</string>
	<string>e0f2=6b;Call brightens down w RKA2 for special mode (was =91)</string>
	<string>e06e=70;Map vidmirror key for special mode default is adb90</string>
</array>
<key>Custom PS2 Map</key>
<array>
	<string>e01e=e037;Map tp disable to Fn+f3</string>
	<string>e037=e01e;Prevent PrntScr from triggering tp disable</string>
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
        - [TL-WN725N V2 Driver](https://www.tp-link.com/us/download/TL-WN725N_V2.html#Driver)
    - Ethernet
    	- [AtherosE2200Ethernet](https://github.com/Mieze/AtherosE2200Ethernet)
- [x] dual-GPU
    - [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)

## Apps

Monitor:
- [Intel® Power Gadget](https://software.intel.com/zh-cn/articles/intel-power-gadget-20)

NTFS Writer:
- [Mounty](http://enjoygineering.com/mounty/)

## Others

[Close SIP](https://www.tonymacx86.com/threads/explaining-os-x-el-capitan-security-changes-workarounds-and-current-information.170611/)