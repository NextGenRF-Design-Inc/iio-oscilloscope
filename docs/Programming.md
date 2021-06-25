![logo](../docs/images/ngrf_logo.png)

---

# Programming SD Card

The following instructions detail the steps required for programming a SD card with the IIO-Oscilloscope application for NextGenRF Design hardware platforms.  Additional information for non NextGenRF Design hardware platforms can be found on [here](https://wiki.analog.com/resources/tools-software/linux-software/zynq_images).

## Table of Contents
- [Programming SD Card](#programming-sd-card)
  - [Table of Contents](#table-of-contents)
- [Downloading Image](#downloading-image)
- [Flashing SD Card](#flashing-sd-card)
- [Preparing the Image](#preparing-the-image)

# Downloading Image

The latest pre-formatted linux image can be found from Analog Devices [here](https://swdownloads.analog.com/cse/kuiper/2021-02-23-ADI-Kuiper.img.xz).  This should be downloaded to a PC.  It will be used in subsequent steps for flashing the SD card. 

# Flashing SD Card

The next step is to flash the SD card using the following instructions depending on if your PC is running Linux or Windows:
- [Linux Hosts](https://wiki.analog.com/resources/tools-software/linux-software/zynq_images/linux_hosts)
- [Windows Hosts](https://wiki.analog.com/resources/tools-software/linux-software/zynq_images/windows_hosts)

# Preparing the Image

Once flashed the SD card will contain a FAT partition labled BOOT and an EXT4 partition labeled rootfs.  The rootfs is the file system used by Linux running on the hardware.  The BOOT partition comes with the boot files for the various hardware platforms supported by Analog Devices.  In order for a specific hardware platform to boot properly the boot files must be copied from the respective subdirectory into the base directory.  These files include:

- uImage
- BOOT.BIN
- devicetree.dtb or system.dtb (depending on the hardware platform)

![sd_card_files](images/sd_card_files.png)

For Analog Devices hardware platforms these files can be simply copied from the existing subdirectory up one directory to the top of the BOOT partition.  For NextGenRF Design hardware platforms these boot files must be copied from the latest release located [here](https://github.com/NextGenRF-Design-Inc/iio-oscilloscope/releases)

