wrkDir:=${PWD}
srcDir:=$(dir $(lastword $(MAKEFILE_LIST)))
hdlDir:=$(wrkDir)/Adi/hdl
whichVivado:= $(shell which vivado) |rev | cut -d'/' -f3- |rev
vivadoDir=$(shell echo $(whichVivado))

.PHONY:	all

all: directories boards adi_hdl source ip build

directories:
	@echo 'Source Directory: $(srcDir)'
	@echo 'Build Directory: $(wrkDir)'
	@echo 'Vivado Directory: ' $(vivadoDir)

boards:
	cp -r $(srcDir)/../../boards/bytepipe_3cg_som $(vivadoDir)/data/boards/board_files/

source: 	
	@cp $(srcDir)/axi_adrv9001_if.v $(wrkDir)/Adi/hdl/library/axi_adrv9001/axi_adrv9001_if.v 
	@cp $(srcDir)/adrv9001_tx.v $(wrkDir)/Adi/hdl/library/axi_adrv9001/adrv9001_tx.v 
	@cp $(srcDir)/adrv9001_rx.v $(wrkDir)/Adi/hdl/library/axi_adrv9001/adrv9001_rx.v 

ip:
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/util_pack/util_upack2 xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/util_pack/util_cpack2 xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/sysid_rom xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_sysid xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_dmac xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_adrv9001 xilinx || exit $$?;

build:
	vivado -mode batch -nojournal -source $(srcDir)/make.tcl -tclargs $(mode)

adi_hdl: | $(hdlDir)

$(hdlDir):
	@mkdir -p $(hdlDir)
	git clone --branch hdl_2019_r2 https://github.com/analogdevicesinc/hdl.git $(wrkDir)/Adi/hdl
	@sed -i 's/2019.1/2019.1.3/g' $(wrkDir)/Adi/hdl/library/scripts/adi_ip_xilinx.tcl





	

