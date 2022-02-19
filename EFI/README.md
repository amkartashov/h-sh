# EFI

Based on <https://github.com/ruibeard/OpenCore-ASRock-Z490M-ITX-ac>.

Works with MacOS BigSur 11.6 and OpenCore 0.7.8.

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

[OpenCore update guide](https://dortania.github.io/OpenCore-Post-Install/universal/update.html)

### Review opencore files to update, download new versions

* from [OpenCore-0.7.8-RELEASE.zip](https://github.com/acidanthera/OpenCorePkg/releases/download/0.7.8/OpenCore-0.7.8-RELEASE.zip)
  * `EFI/BOOT/BOOTx64.efi`
  * `EFI/OC/OpenCore.efi`
  * `EFI/OC/Drivers/OpenRuntime.efi`
  * `EFI/OC/Tools/OpenShell.efi`
* [HfsPlus.efi](https://github.com/acidanthera/OcBinaryData/raw/master/Drivers/HfsPlus.efi) -> `EFI/OC/Drivers/HfsPlus.efi`
* `EFI/OC/Kexts/`
  * [AppleALC.kext](https://github.com/acidanthera/AppleALC/releases/download/1.6.9/AppleALC-1.6.9-RELEASE.zip)
  * [CpuTscSync.kext](https://github.com/acidanthera/CpuTscSync/releases/download/1.0.6/CpuTscSync-1.0.6-RELEASE.zip)
  * [FakePCIID.kext](https://bitbucket.org/RehabMan/os-x-fake-pci-id/downloads/RehabMan-FakePCIID-2018-1027.zip)
  * [FakePCIID_Intel_HDMI_Audio.kext](https://bitbucket.org/RehabMan/os-x-fake-pci-id/downloads/RehabMan-FakePCIID-2018-1027.zip)
  * [IntelMausi.kext, IntelSnowMausi.kext](https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip)
  * [Lilu.kext](https://github.com/acidanthera/Lilu/releases/download/1.6.0/Lilu-1.6.0-RELEASE.zip)
  * [NVMeFix.kext](https://github.com/acidanthera/NVMeFix/releases/download/1.0.9/NVMeFix-1.0.9-RELEASE.zip)
  * [SMCProcessor.kext, SMCSuperIO.kext, VirtualSMC.kext](https://github.com/acidanthera/VirtualSMC/releases/download/1.2.8/VirtualSMC-1.2.8-RELEASE.zip)
  * `USBMap.kext` generated with [USBMap](https://github.com/corpnewt/USBMap) - no need to update
  * [WhateverGreen.kext](https://github.com/acidanthera/WhateverGreen/releases/download/1.5.7/WhateverGreen-1.5.7-RELEASE.zip)

### Update `EFI/OC/config.plist`

* [MountEFI](https://github.com/corpnewt/MountEFI)

[OpenCore config.plist description](https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html)

1. Compare [config.plist](EFI/OC/config.plist) with `Sample.plist` from opencore with [OCConfigCompare](https://github.com/corpnewt/OCConfigCompare)

    Possible output:

    ```bash
    Checking for values missing from User plist:

    config.plist -> Booter -> Quirks - Missing Key: ResizeAppleGpuBars
    config.plist -> Misc -> BlessOverride -> From|To-Array - Empty: Skipped
    config.plist -> NVRAM -> Delete -> 4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14 -> From-Array - Non-Dictionary Children: Skipped
    config.plist -> NVRAM -> Delete -> 4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102 -> From-Array - Non-Dictionary Children: Skipped
    config.plist -> NVRAM -> Delete -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> From-Array - Non-Dictionary Children: Skipped
    config.plist -> NVRAM -> LegacySchema -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> From-Array - Non-Dictionary Children: Skipped
    config.plist -> NVRAM -> LegacySchema -> 8BE4DF61-93CA-11D2-AA0D-00E098032B8C -> From-Array - Non-Dictionary Children: Skipped
    config.plist -> UEFI -> AppleInput - Missing Key: PointerPollMask
    config.plist -> UEFI -> AppleInput - Missing Key: PointerPollMax
    config.plist -> UEFI -> AppleInput - Missing Key: PointerPollMin
    config.plist -> UEFI -> Audio - Missing Key: AudioOutMask
    config.plist -> UEFI -> Audio - Missing Key: DisconnectHda
    config.plist -> UEFI -> Audio - Missing Key: MaximumGain
    config.plist -> UEFI -> Audio - Missing Key: MinimumAssistGain
    config.plist -> UEFI -> Audio - Missing Key: MinimumAudibleGain
    config.plist -> UEFI -> Output - Missing Key: ReconnectGraphicsOnConnect
    config.plist -> UEFI -> Output - Missing Key: UIScale
    config.plist -> UEFI -> Quirks - Missing Key: EnableVmx
    config.plist -> UEFI -> Quirks - Missing Key: ResizeGpuBars
    
    Checking for values missing from Sample:
    
    Sample.plist -> DeviceProperties -> Add - Missing Key: PciRoot(0x0)/Pci(0x1C,0x1)/Pci(0x0,0x0)
    Sample.plist -> DeviceProperties -> Add - Missing Key: PciRoot(0x0)/Pci(0x1F,0x3)
    Sample.plist -> DeviceProperties -> Add - Missing Key: PciRoot(0x0)/Pci(0x2,0x0)
    Sample.plist -> Misc -> BlessOverride -> From|To-Array - Empty: Skipped
    Sample.plist -> NVRAM -> Add -> 4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14 - Missing Key: UIScale
    Sample.plist -> NVRAM -> Delete -> 4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14 -> From-Array - Non-Dictionary Children: Skipped
    Sample.plist -> NVRAM -> Delete -> 4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102 -> From-Array - Non-Dictionary Children: Skipped
    Sample.plist -> NVRAM -> Delete -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> From-Array - Non-Dictionary Children: Skipped
    Sample.plist -> NVRAM -> LegacySchema -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> From-Array - Non-Dictionary Children: Skipped
    Sample.plist -> NVRAM -> LegacySchema -> 8BE4DF61-93CA-11D2-AA0D-00E098032B8C -> From-Array - Non-Dictionary Children: Skipped
    Sample.plist -> UEFI -> Audio - Missing Key: AudioOut
    Sample.plist -> UEFI -> Audio - Missing Key: MinimumVolume
    Sample.plist -> UEFI -> Audio - Missing Key: VolumeAmplifier
    ```

2. Update [config.plist](EFI/OC/config.plist) with [ProperTree](https://github.com/corpnewt/ProperTree).

3. Validate [config.plist](EFI/OC/config.plist) with `ocvalidate` from opencore utilities.

    Should be:

    ```bash
    $ ./ocvalidate /Users/me/git/amkartashov/h-sh/EFI/OC/config.plist

    PlatformInfo->Generic->SystemUUID is borked (Can only be empty, special string OEM or valid UUID)!
    CheckPlatformInfo returns 1 error!

    Completed validating /Users/me/git/amkartashov/h-sh/EFI/OC/config.plist in 1 ms. Found 1 issue requiring attention.
    ```

#### Boot from USB first

1. Mount USB EFI with MountEFI

    ```bash
    sudo mkdir /Volumes/usb-efi
    sudo mount -t msdos /dev/disk4s1 /Volumes/usb-efi
    ```

2. Copy [PlatformInfo](https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#platforminfo) from old `config.plist` on USB
3. Update files
4. Update PlatformInfo fields in new `config.plist` on USB: set old values for `SystemSerialNumber`, `MLB`, `SystemUUID` and `ROM`.
5. Try boot from USB now

#### Update host EFI and reboot

0. Check disks with `diskutil list`

1. Mount USB EFI

    ```bash
    sudo mkdir /Volumes/usb-efi
    sudo mount -t msdos /dev/diskREPLACEs1 /Volumes/usb-efi
    ```

2. Mount host EFI with MountEFI

    ```bash
    sudo mkdir /Volumes/host-efi
    sudo mount -t msdos /dev/disk0s1 /Volumes/host-efi
    ```

3. Copy EFI from USB to host

    ```bash
    mv /Volumes/host-efi/EFI{,.backup$(date +%F)}
    cp -a /Volumes/{usb,host}-efi/EFI
    ```

4. Reboot

You can check opencore version with:

```bash
$ # BEFORE
$ nvram 4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102:opencore-version
4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102:opencore-version REL-063-2020-11-02

$ # AFTER
$ nvram 4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102:opencore-version
4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102:opencore-version REL-078-2022-02-07
```
