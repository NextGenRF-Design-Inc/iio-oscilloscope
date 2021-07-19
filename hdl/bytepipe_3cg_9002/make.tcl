# Create Path Variables
set wrkDir [pwd]
set srcDir [file dirname [file normalize [ info script ] ] ]

# Set Vivado Project Name
set project_name iio

# Create Project
create_project $project_name $wrkDir/vivado -part xczu3cg-sbva484-1-e -force

# Set Board File
set_property board_part nextgenrf.com:bytepipe_3cg_som:part0:1.0 [current_project]

# Add Source Files
add_files -fileset constrs_1 -norecurse $srcDir/bytepipe_system_constr.xdc
add_files -fileset constrs_1 -norecurse $srcDir/lvds_constr.xdc
add_files -fileset constrs_1 -norecurse $srcDir/system_constr.xdc
add_files -norecurse $srcDir/system_top.v
add_files -norecurse $srcDir/system_wrapper.v
add_files -norecurse $wrkDir/Adi/hdl/library/common/ad_iobuf.v

# Generate IP

# Add IP Catalog
set_property ip_repo_paths [list \
  [file normalize [file join $wrkDir/Adi/hdl/library]] \
] [current_project]
update_ip_catalog

# Generate Block Design
source $srcDir/system.tcl

# Refresh and Save Project
update_compile_order -fileset sources_1
regenerate_bd_layout
save_bd_design

# Make Top Module Wrapper
update_compile_order -fileset sources_1
set_property top system_top [current_fileset]
update_compile_order -fileset sources_1

# Generate Targets
generate_target all [get_files  $wrkDir/vivado/$project_name.srcs/sources_1/bd/system/system.bd]
export_ip_user_files -of_objects [get_files $wrkDir/vivado/$project_name.srcs/sources_1/bd/system/system.bd] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] $wrkDir/vivado/$project_name.srcs/sources_1/bd/system/system.bd]
launch_runs -jobs 8 {system_axi_hp1_interconnect_0_synth_1 system_util_adc_2_pack_0_synth_1}

# Launch Runs
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run -quiet impl_1

# Export Hardware Defintion Files
update_compile_order -fileset sources_1
file copy -force $wrkDir/vivado/$project_name.runs/impl_1/system_top.sysdef $wrkDir/system.hdf

exit
