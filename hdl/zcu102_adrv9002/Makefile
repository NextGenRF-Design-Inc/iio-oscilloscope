wrkDir:=${PWD}
srcDir:=$(dir $(lastword $(MAKEFILE_LIST)))
hdlDir:=$(wrkDir)/Adi/hdl
whichVivado:= $(shell which vivado) |rev | cut -d'/' -f3- |rev
vivadoDir=$(shell echo $(whichVivado))

.PHONY:	all

all: directories adi_hdl build

directories:
	@echo 'Source Directory: $(srcDir)'
	@echo 'Build Directory: $(wrkDir)'
	@echo 'Vivado Directory: ' $(vivadoDir)

build:
	$(MAKE) -C Adi/hdl/projects/adrv9001/zcu102/

adi_hdl: | $(hdlDir)

$(hdlDir):
	@mkdir -p $(hdlDir)
	git clone --branch hdl_2019_r2 https://github.com/analogdevicesinc/hdl.git $(wrkDir)/Adi/hdl
	@sed -i 's/2019.1/2019.1.3/g' $(wrkDir)/Adi/hdl/library/scripts/adi_ip_xilinx.tcl
	@sed -i 's/2019.1/2019.1.3/g' $(wrkDir)/Adi/hdl/projects/scripts/adi_project_xilinx.tcl


	

