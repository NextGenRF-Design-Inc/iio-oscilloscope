wrkDir:=${PWD}
srcDir:=$(dir $(lastword $(MAKEFILE_LIST)))
hdlDir:=$(wrkDir)/Adi/hdl

include $(srcDir)../xilinx_tools.mk

.PHONY:	all

all: directories vivado boards adi_hdl build export

directories:
	@echo 'Source Directory: $(srcDir)'
	@echo 'Build Directory: $(wrkDir)'
	@echo 'Vivado Directory: $(vivadoDir)'

boards:
	@cp -r $(srcDir)../../boards/bytepipe_3cg_som $(vivadoDir)/data/boards/board_files/

vivado:
	@source $(vivadoDir)/settings64.sh

build:
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/util_pack/util_upack2 xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/util_pack/util_cpack2 xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/sysid_rom xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_sysid xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_dmac xilinx || exit $$?;
	$(MAKE) -C $(wrkDir)/Adi/hdl/library/axi_adrv9001 xilinx || exit $$?;
	vivado -nojournal -source $(srcDir)/make.tcl

export:


adi_hdl: | $(hdlDir)

$(hdlDir):
	@mkdir -p $(hdlDir)
	git clone --branch hdl_2019_r2 https://github.com/analogdevicesinc/hdl.git $(wrkDir)/Adi/hdl
	@sed -i 's/2019.1/2019.1.3/g' $(wrkDir)/Adi/hdl/library/scripts/adi_ip_xilinx.tcl
	@cp $(srcDir)/axi_adrv9001_if.v $(wrkDir)/Adi/hdl/library/axi_adrv9001/


	

