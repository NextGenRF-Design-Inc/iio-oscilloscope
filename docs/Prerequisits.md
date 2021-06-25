
![logo](https://www.nextgenrf.com/assets/uploads/2020/06/logo.jpg)

# Linux Host HDL Build Environment 

This document describes the Linux host build environment for HDL.

## Linux Support

Below are the supported Linux versions with a link to the image.

* [Ubuntu 18.04.4](http://old-releases.ubuntu.com/releases/18.04.4/ubuntu-18.04-desktop-amd64.iso)

## Installing Linux

* Download ISO image from link in list of supported Linux distributions.
* Create bootable USB drive using [Rufus](https://rufus.ie/) 

See additional information [here](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview).

## Installing Chrome

This is optional but often useful for accessing google services such as Drive, Gmail, and Hangouts.  From the bash terminal run the following commands.

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo chmod +x google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
```

## Installing Tools

The following tools should be installed.

```
sudo apt install git
sudo apt-get install build-essential
sudo apt-get install u-boot-tools 
sudo apt install snapd
sudo snap install barrier
```

## Installing Vivado

The HDL repository currently supports Vivado 2019.2 and can be downloaded from [here](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html).  Download [Xilinx Unified Installer 2019.2: Linux Self Extracting Web Installer](https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2019.2_1106_2127_Lin64.bin).
<br>
<br>
![vivado_2019.2_download](images/vivado_2019.2_download.PNG)
<br>
<br>
Once downloaded execute the following bash commands.
```
cd Downloads/
sudo chmod +x Xilinx_Unified_2019.2_1106_2127_Lin64.bin
./Xilinx_Unified_2019.2_1106_2127_Lin64.bin
```

It is important not to install with sudo.  This will launch the install utility shown below.  



Disclaimer
----------------------
NextGen RF Design makes no warranty for the use of this code or design. This code is provided  "As Is". NextGen RF Design assumes no responsibility for
any errors, which may appear in this code, nor does it make a commitment to update the information contained herein. NextGen RF Design specifically
disclaims any implied warranties of fitness for a particular purpose.
Copyright(c) NextGen RF Design
All rights reserved.

