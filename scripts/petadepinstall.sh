#!/bin/bash -e
#######################################################################
#   File            :   petadepinstall.sh
#   Description     :   Install PetaLinux dependencies, downloads
#                       and runs Peta installer, etc.
#   Author          :   Dan Bomsta
#   Date            :   March 16, 2021
#######################################################################

# PetaLinux installer file
PETA_FILE=petalinux-v2019.2-final-installer.run
PETA_FILE_PART=petalinux-v2019.2-final-installer.run.part


#######################################################################
# Function      : Main
#
#######################################################################
function main() 
{
    installDepends
    downloadPeta
    installPetaLinux
    setDash
}

#######################################################################
# Function      : installDepends
#
# Installs PetaLinux dependencies
# see https://www.fpgadeveloper.com/how-to-install-petalinux-2019.1/
#######################################################################
function installDepends()
{
    # Install dependencies:
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
}

#######################################################################
# Function      : downloadPeta
#
# Download PetaLinux installer
#######################################################################
function downloadPeta()
{
    # Download PetaLinux installer
    # Darn it we cannot just download it as Xilinx is requiring a user account
    #wget https://www.xilinx.com/member/forms/download/xef.html?filename=$PETA_FILE -O ~/Downloads/$PETA_FILE
    firefox https://www.xilinx.com/member/forms/download/xef.html?filename=$PETA_FILE \
    -O ~/Downloads/$PETA_FILE

    # Wait for the user to download the file
    while [[ ! -e $PETA_FILE_PART ]]; do
        echo "Waiting for PetaLinux to begin downloading..."
        sleep 10
    done

    # Wait for the download to complete.  While the file exists
    # we loop
    while [[ -e $PETA_FILE_PART ]]; do
        echo "...downloading PetaLinux..."
        sleep 10
    done  
}

#######################################################################
# Function      : installPetaLinux
#
# Run PetaLinux installer after download
#######################################################################
function installPetaLinux()
{
    # Make the downloaded install executable
    sudo chmod +x ~/Downloads/$PETA_FILE

    # Createa directory where we want the install
    mkdir -p ~/petalinux/

    # Run the installer
    ~/Downloads/$PETA_FILE ~/tools/Xilinx/petalinux/2019.1/
}

#######################################################################
# Function      : Reconfigure shell
#######################################################################
function setDash()
{
    sudo dpkg-reconfigure dash
}


# Entry point
main "$@"