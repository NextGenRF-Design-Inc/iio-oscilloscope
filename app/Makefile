wrkDir:=${PWD}
srcDir:=$(dir $(lastword $(MAKEFILE_LIST)))

.PHONY:	all

all:directories fetch project dts kernel build package output

directories:
	@echo 'Source Directory: $(srcDir)'
	@echo 'Build Directory: $(wrkDir)'

fetch:
	git clone --branch 2019_R2 https://github.com/analogdevicesinc/meta-adi.git

project:
	petalinux-create -t project --template zynqMP --name iioscope
	petalinux-config -p iioscope/ --get-hw-description=$(wrkDir)

dts:
	@cp $(srcDir)/zynqmp-bytepipe.dts meta-adi/meta-adi-xilinx/recipes-bsp/device-tree/files/
	@cp $(srcDir)/pl-delete-nodes-zynqmp-bytepipe.dtsi meta-adi/meta-adi-xilinx/recipes-bsp/device-tree/files/
	@sed -i 's/.*SRC_URI_append_zynqmp.*/&\n\t\tfile:\/\/pl-delete-nodes-zynqmp-bytepipe.dtsi \\/' meta-adi/meta-adi-xilinx/recipes-bsp/device-tree/device-tree.bbappend
	@sed -i 's/.*SRC_URI_append_zynqmp.*/&\n\t\tfile:\/\/zynqmp-bytepipe.dts \\/' meta-adi/meta-adi-xilinx/recipes-bsp/device-tree/device-tree.bbappend
	@echo "KERNEL_DTB=\"zynqmp-bytepipe\"" >> iioscope/project-spec/meta-user/conf/petalinuxbsp.conf

kernel: 
	petalinux-config -p iioscope/ -c kernel

build:
	petalinux-build -p iioscope/ || true
	cp $(srcDir)/zynqmp-bytepipe.dts iioscope/build/tmp/work-shared/plnx-zynqmp/kernel-source/arch/arm64/boot/dts/xilinx/
	petalinux-build -p iioscope/

package:
	petalinux-package -p iioscope/ --boot --fsbl iioscope/images/linux/zynqmp_fsbl.elf --fpga iioscope/images/linux/system.bit --pmufw iioscope/images/linux/pmufw.elf --atf iioscope/images/linux/bl31.elf --u-boot iioscope/images/linux/u-boot.elf 

output:
	cp iioscope/images/linux/image.ub ./
	cp iioscope/images/linux/BOOT.BIN ./
	cp iioscope/images/linux/system.dtb ./
	cp iioscope/images/linux/zynqmp_fsbl.elf ./





	

