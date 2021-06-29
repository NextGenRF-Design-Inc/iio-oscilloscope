![logo](../docs/images/ngrf_logo.png)

---

# Building HDL
This document details the building of HDL on NextGenRF Design hardware platforms for the IIO-Oscilloscope. If you are reading this then it is likely you have cloned the NextGenRF Design IIO-Oscilloscope from [here](https://github.com/NextGenRF-Design-Inc/iio-oscilloscope.git). If not please clone this repository to your local Linux Machine.

```bash
git clone https://github.com/NextGenRF-Design-Inc/iio-oscilloscope.git
```

## Create Workspace

Next create a workspace folder.  This can be created anywhere and can be deleted once the build is done. 

```bash
mkdir workspace
cd workspace
```

## Setup Vivado

Add the Vivado path to the local directory as shown below.

```bash
export PATH=$PATH:~/tools/Xilinx/Vivado/2019.1/bin
```

## Execute Build Script

The HDL is built by executing a script from the IIO-Oscilloscope/hdl directory.  This is shown below.  

```bash
make -f ~/iio-oscilloscope/hdl/bytepipe_3cg_9002/Makefile 
```

The script will download all the necessary source code and and launch the Vivado build.  Once the source is downloaded the Vivado GUI is launched giving the user an idea of the build stage.  The build can take up to 1 hour to complete depending on your machines resources. 

Once the build is finished a system.hdf file will be created and exported to the top of the workspace directory. 

### Disclaimer
----------------------
NextGen RF Design makes no warranty for the use of this code or design. This code is provided  "As Is". NextGen RF Design assumes no responsibility for
any errors, which may appear in this code, nor does it make a commitment to update the information contained herein. NextGen RF Design specifically
disclaims any implied warranties of fitness for a particular purpose.
Copyright(c) NextGen RF Design
All rights reserved.