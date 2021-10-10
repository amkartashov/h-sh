# EFI

Based on https://github.com/ruibeard/OpenCore-ASRock-Z490M-ITX-ac

Works with MacOS BigSur 11.6 and OpenCore 0.7.4.

## HARDWARE

* Motherboard: ASRock Z490M Pro4
* CPU: Intel Core i7-10700K OEM
* Cooler: be quiet! DARK ROCK 4 [BK021]
* RAM: A-Data XPG Gammix D10 [AX4U3600716G18A-DB10] 32 ГБ
* CASE: ZET GAMING Rare Minicase MS3 Mesh WG ARGB белый
* PSU: Cougar GEX650 [31GE065002P01]
* Storage: SSD M.2 A-Data XPG SX8200 Pro [ASX8200PNP-1TT-C]
* Keyboard: A4Tech KV-300H
* Mouse: Logitech M170

## Issues

* Sometimes USB keyboard stops working, need to reconnect it.

## Upgrade

opencore files to update:

* https://github.com/acidanthera/OpenCorePkg/releases/download/0.7.4/OpenCore-0.7.4-RELEASE.zip
    EFI/BOOT/BOOTx64.efi
    EFI/OC/OpenCore.efi
    EFI/OC/Drivers/OpenRuntime.efi
    EFI/OC/Tools/OpenShell.efi

* https://github.com/acidanthera/OcBinaryData/raw/master/Drivers/HfsPlus.efi EFI/OC/Drivers/HfsPlus.efi

* EFI/OC/config.plist with https://github.com/corpnewt/OCConfigCompare and opencore install guide and https://github.com/corpnewt/ProperTree and https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#acpi and ocvalidate

* kexts

/Volumes/EFI/EFI/OC/Kexts/AppleALC.kext https://github.com/acidanthera/AppleALC/releases/download/1.6.5/AppleALC-1.6.5-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/CpuTscSync.kext https://github.com/acidanthera/CpuTscSync/releases/download/1.0.5/CpuTscSync-1.0.5-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/FakePCIID.kext https://bitbucket.org/RehabMan/os-x-fake-pci-id/downloads/RehabMan-FakePCIID-2018-1027.zip

/Volumes/EFI/EFI/OC/Kexts/FakePCIID_Intel_HDMI_Audio.kext https://bitbucket.org/RehabMan/os-x-fake-pci-id/downloads/RehabMan-FakePCIID-2018-1027.zip

/Volumes/EFI/EFI/OC/Kexts/IntelMausi.kext https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/IntelSnowMausi.kext https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/Lilu.kext https://github.com/acidanthera/Lilu/releases/download/1.5.6/Lilu-1.5.6-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/NVMeFix.kext https://github.com/acidanthera/NVMeFix/releases/download/1.0.9/NVMeFix-1.0.9-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/SMCProcessor.kext https://github.com/acidanthera/VirtualSMC/releases/download/1.2.7/VirtualSMC-1.2.7-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/SMCSuperIO.kext https://github.com/acidanthera/VirtualSMC/releases/download/1.2.7/VirtualSMC-1.2.7-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/USBMap.kext - generated with https://github.com/corpnewt/USBMap (no need to update)

/Volumes/EFI/EFI/OC/Kexts/VirtualSMC.kext https://github.com/acidanthera/VirtualSMC/releases/download/1.2.7/VirtualSMC-1.2.7-RELEASE.zip

/Volumes/EFI/EFI/OC/Kexts/WhateverGreen.kext https://github.com/acidanthera/WhateverGreen/releases/download/1.5.4/WhateverGreen-1.5.4-RELEASE.zip

