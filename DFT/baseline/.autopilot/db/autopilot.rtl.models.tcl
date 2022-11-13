set SynModuleInfo {
  {SRCNAME dft_Pipeline_VITIS_LOOP_19_2 MODELNAME dft_Pipeline_VITIS_LOOP_19_2 RTLNAME dft_dft_Pipeline_VITIS_LOOP_19_2
    SUBMODULES {
      {MODELNAME dft_fadd_32ns_32ns_32_10_full_dsp_1 RTLNAME dft_fadd_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME dft_fmul_32ns_32ns_32_8_max_dsp_1 RTLNAME dft_fmul_32ns_32ns_32_8_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME dft_dft_Pipeline_VITIS_LOOP_19_2_cos_coefficients_table_ROM_AUTO_1R RTLNAME dft_dft_Pipeline_VITIS_LOOP_19_2_cos_coefficients_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_dft_Pipeline_VITIS_LOOP_19_2_sin_coefficients_table_ROM_AUTO_1R RTLNAME dft_dft_Pipeline_VITIS_LOOP_19_2_sin_coefficients_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_flow_control_loop_pipe_sequential_init RTLNAME dft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dft MODELNAME dft RTLNAME dft IS_TOP 1}
}
