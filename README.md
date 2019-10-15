# Hackintosh on MSI GP62 6QG-1071XCN

|  Device  |    Model     |
| :------: | :----------: |
|   CPU    |  i7-6700HQ   |
|  Audio   |    ALC898    |
| Ethernet | Killer E2400 |
|  Wi-Fi   |  BCM94352Z   |


## Reference

- [tonymacx86](http://tonymacx86.com)
- [insanelymac](http://www.insanelymac.com)
- [远景](http://bbs.pcbeta.com)
- [idelta](https://www.idelta.info)
- [Pike's Universum](https://pikeralpha.wordpress.com)

## Installation
[[Guide] Booting the OS X installer on LAPTOPS with Clover](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)

[Clover Bootloader](https://github.com/CloverHackyColor/CloverBootloader)

## Post Installation

- [x] CPU
  - [Skylake HWP Enable](https://www.tonymacx86.com/threads/skylake-hwp-enable.214915/)
  - [[Guide] Native Power Management for Laptops](https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/)
  - [one-key-cpufriend](https://github.com/stevezhengshiqi/one-key-cpufriend)

- [x] Fan Control
  - [How EC work](https://github.com/YoyPa/isw/wiki/How-EC-work-(for-GS40-6QE-at-least))

- [x] Wi-Fi/Bluetooth
  - [Broadcom WiFi/Bluetooth [Guide]](https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/)

- [x] USB
  - [[Guide] Creating a Custom SSDT for USBInjectAll.kext](https://www.tonymacx86.com/threads/guide-creating-a-custom-ssdt-for-usbinjectall-kext.211311/)

- [x] iGPU
  - [[Guide] Intel Framebuffer patching using WhateverGreen](https://www.tonymacx86.com/threads/guide-intel-framebuffer-patching-using-whatevergreen.256490/)
  - [one-key-hidpi](https://github.com/xzhih/one-key-hidpi)

- [x] eGPU
  - [[Guide] Disabling discrete graphics in dual-GPU laptops](https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/)
  - [[Guide] Using Clover to "hotpatch" ACPI - Disabling discrete/switched GPU with Hotpatch](https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/post-1308262)
  - [Disabling NVIDIA Optimus card on all laptops](https://www.insanelymac.com/forum/forums/topic/295584-disabling-nvidia-optimus-card-on-all-laptops/)

- [x] iCloud
  - [FIX iMessage, Facetime, and App Store 2018 Tutorial](https://www.youtube.com/watch?v=JhA7e26dGgM)

## Tools

ACPI:
- [MaciASL](https://github.com/acidanthera/MaciASL)

Patch:
- [Hackintool](https://www.tonymacx86.com/threads/release-hackintool-v1-7-5.254559/)

Monitor:
- [Intel® Power Gadget](https://software.intel.com/en-us/articles/intel-power-gadget)

- [IO Registry Explorer](https://developer.apple.com/download/more/)

- [iStat Menus](https://bjango.com/mac/istatmenus/)

- [HWSensors](https://github.com/kozlek/HWSensors)

NTFS Writer:
- [Mounty](http://enjoygineering.com/mounty/)

## Others

- [Close SIP](https://www.tonymacx86.com/threads/explaining-os-x-el-capitan-security-changes-workarounds-and-current-information.170611/)

- Disable auto mount
  
  ```bash
  sudo cp ./Other/fstab /etc
  ```
- Enable middle mouse for look up & data detectors

  
  ```bash
  brew cask install Karabiner-Elements
  cp ./Other/lookup.json ~/.config/karabiner/assets/complex_modifications
  ```
  You can use them in `Preferences > Complex Modifications > Add rule`
  
# Alert

Do NOT directly use the file provided, you need to change something so that it won't cause a problem.

The best way to make your own Hackintosh installed is following the guide list above step by step.

# Credits
- [Apple](https://www.apple.com/) for macOS
- [Acidanthera](https://github.com/acidanthera) for awesome kexts
- [RehabMan](https://github.com/RehabMan) for guides and kexts