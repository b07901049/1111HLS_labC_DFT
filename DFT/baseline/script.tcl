############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DFT
set_top dft
add_files DFT/coefficients1024.h
add_files DFT/dft.cpp
add_files DFT/dft.h
add_files -tb DFT/dft_test.cpp
add_files -tb DFT/out.gold.dat
open_solution "baseline" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 5 -name default
#source "./DFT/baseline/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
