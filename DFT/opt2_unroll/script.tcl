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
open_solution "opt2_unroll" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 5.6 -name default
source "./DFT/opt2_unroll/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -format ip_catalog
