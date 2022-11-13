
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_dft_top/AESL_inst_dft/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinoutgroup]
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_20_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_19_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_18_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_17_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_16_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_15_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_14_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_13_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_12_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_11_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_10_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_9_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_8_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_7_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_6_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_5_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_4_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_3_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_2_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_1_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/imag_op_0_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_20_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_19_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_18_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_17_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_16_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_15_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_14_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_13_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_12_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_11_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_10_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_9_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_8_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_7_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_6_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_5_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_4_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_3_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_2_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_1_address0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_q1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_address1 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_d0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_op_0_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_dft_top/AESL_inst_dft/real_sample_q0 -into $return_group -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_sample_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_dft_top/AESL_inst_dft/real_sample_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_dft_top/AESL_inst_dft/ap_start -into $blocksiggroup
add_wave /apatb_dft_top/AESL_inst_dft/ap_done -into $blocksiggroup
add_wave /apatb_dft_top/AESL_inst_dft/ap_idle -into $blocksiggroup
add_wave /apatb_dft_top/AESL_inst_dft/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_dft_top/AESL_inst_dft/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_dft_top/AESL_inst_dft/ap_clk -into $clockgroup
save_wave_config dft.wcfg
run all
quit

