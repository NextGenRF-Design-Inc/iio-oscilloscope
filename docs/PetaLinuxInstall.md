![logo](../docs/images/ngrf_logo.png) 

---

# PetaLinunx Installation 
This document describes the process to install Xilinx PetaLinux tools.

## Table of Contents
- [PetaLinunx Installation](#petalinunx-installation)
  - [Table of Contents](#table-of-contents)
  - [Installation Requirements](#installation-requirements)
- [Installation Steps](#installation-steps)
  - [Procedure Testing](#procedure-testing)
    - [Ubuntu 18.04 (Bionic Beaver) VM](#ubuntu-1804-bionic-beaver-vm)
- [Appendix](#appendix)
  - [Manual PetaLinux Dependency Installation](#manual-petalinux-dependency-installation)


## Installation Requirements
PetaLinux has the following installation requirements, [^ug1] 

- Minimum workstation requirements:
  - 8 GB RAM (recommended minimum for Xilinx® tools)
  - 2 GHz CPU clock or equivalent (minimum of 8 cores)
  - 100 GB free HDD space
  - Supported OS:
      - Red Hat Enterprise Workstation/Server 7.4, 7.5, 7.6 (64-bit)
      - CentOS Workstation/Server 7.4, 7.5, 7.6 (64-bit)
      - Ubuntu Linux Workstation/Server 16.04.5, 16.04.6, 18.04.1,18.04.02 (64-bit)
- Root access to install PetaLinux dependencies
- Bash shell
- Xilinx account (to perform downloads)

PetaLinux dependency installation can be performed using the script `petatepinstall.sh` contained in thus repo, directory `scripts`. 

# Installation Steps
The following steps are preformed on a Linux machine, either a VM or a normal machine.

1. Download [PetaLinux 2019.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools/2019-2.html).  It is 8GB, it will be a while.
2. Install PetaLinux dependencies using `petatepinstall.sh` or manually as detailed [below](#manual-petalinux-dependency-installation)
3. Once the PetaLinux installer download has completed and the dependencies are installed, PetaLinux can be installed.
4. In a Bash make the installer executable: `chmod +x petalinux-v2019.2-final-installer.run`
5. Run PetaLinux installer as standard user: `./petalinux-v2019.2-final-installer.run`.  This is sample output from installing PetaLinux

```shell
ngrf@ubuntu:~/Downloads$ ./petalinux-v2019.2-final-installer.run /home/ngrf/petalinux
INFO: Checking installation environment requirements...
INFO: Checking free disk space                                                                                                
INFO: Checking installed tools                                                                                                
INFO: Checking installed development libraries                                                                                
INFO: Checking network and other services                                                                                     
WARNING: No tftp server found - please refer to "PetaLinux SDK Installation Guide" for its impact and solution                
INFO: Checking installer checksum...                                                                                          
INFO: Extracting PetaLinux installer...                                                                                                                                                                                                                                                             
LICENSE AGREEMENTS                                                                                                                                       

PetaLinux SDK contains software from a number of sources.  Please review
the following licenses and indicate your acceptance of each to continue.

You do not have to accept the licenses, however if you do not then you may 
not use PetaLinux SDK.

Use PgUp/PgDn to navigate the license viewer, and press 'q' to close

Press Enter to display the license agreements
Do you accept Xilinx End User License Agreement? [y/N] > y
Do you accept Webtalk Terms and Conditions? [y/N] > y
Do you accept Third Party End User License Agreement? [y/N] > y
INFO: Installing PetaLinux...
INFO: Checking PetaLinux installer integrity...
INFO: Installing PetaLinux SDK to "/home/ngrf/petalinux/."
INFO: Installing aarch64 Yocto SDK to "/home/ngrf/petalinux/./components/yocto/source/aarch64"...
INFO: Installing arm Yocto SDK to "/home/ngrf/petalinux/./components/yocto/source/arm"...
INFO: Installing microblaze_full Yocto SDK to "/home/ngrf/petalinux/./components/yocto/source/microblaze_full"...
INFO: Installing microblaze_lite Yocto SDK to "/home/ngrf/petalinux/./components/yocto/source/microblaze_lite"...
INFO: PetaLinux SDK has been installed to /home/ngrf/petalinux/.

```
6. Ensure shell is using Bash: `sudo dpkg-reconfigure dash`.  Select **no** when prompted.  You should see output like this
```shell
ngrf@ubuntu:~/petalinux$ sudo dpkg-reconfigure dash
Removing 'diversion of /bin/sh to /bin/sh.distrib by dash'
Adding 'diversion of /bin/sh to /bin/sh.distrib by bash'
Removing 'diversion of /usr/share/man/man1/sh.1.gz to /usr/share/man/man1/sh.distrib.1.gz by dash'
Adding 'diversion of /usr/share/man/man1/sh.1.gz to /usr/share/man/man1/sh.distrib.1.gz by bash'

```

You are now ready to build on the system.

## Procedure Testing
This procedure has been tested with the following environments.

### Ubuntu 18.04 (Bionic Beaver) VM
- Window Machine
    - Windows `10 Pro`
    - Version: `10.0.19042 Build 19042`
    - Model: `XPS 13 7390`
    - Type: `x64`
    - Processor: `Processor	Intel(R) Core(TM) i7-10710U CPU @ 1.10GHz, 1608 Mhz, 6 Core(s), 12 Logical Processor(s)`
    - RAM `16GB`
- VM Host: `WMWare Workstation 16 Pro (16.1.0 build-17198959)`
    - Memory: `4GB`
    - Processors: `4 with 2 cores per processor`
    - HD: `128GB`
    - OS: `Ubuntu Ubuntu 18.04.5 LTS`


# Appendix
## Manual PetaLinux Dependency Installation

```bash
sudo apt-get -y install tofrodos \
    iproute2 \
    gawk \
    make \
    net-tools \
    libncurses5-dev \
    tftpd \
    zlib1g:i386 \
    libssl-dev \
    flex \
    bison \
    libselinux1 \
    gnupg \
    wget \
    diffstat \
    chrpath \
    socat \
    xterm \
    autoconf \
    libtool \
    tar \
    unzip \
    texinfo \
    zlib1g-dev \
    gcc-multilib \
    build-essential \
    screen \
    pax \
    gzip

    sudo apt install python-minimal
    sudo apt-get install -y xvfb
    sudo apt-get install libsdl1.2-dev
    sudo apt-get install libglib2.0-dev
```

<!-- Footnotes -->
[^ug1]: [ug1144-petalinux-tools-reference-guide.pdf](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2019_2/ug1144-petalinux-tools-reference-guide.pdf)