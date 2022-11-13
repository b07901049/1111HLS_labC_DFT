set SynModuleInfo {
  {SRCNAME dft MODELNAME dft RTLNAME dft IS_TOP 1
    SUBMODULES {
      {MODELNAME dft_fadd_32ns_32ns_32_10_full_dsp_1 RTLNAME dft_fadd_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME dft_fmul_32ns_32ns_32_7_max_dsp_1 RTLNAME dft_fmul_32ns_32ns_32_7_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_10s_10s_10_3_1 RTLNAME dft_mul_10s_10s_10_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_mul_11ns_12ns_23_4_1 RTLNAME dft_mul_mul_11ns_12ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dft_p_ZL22cos_coefficients_table_0_ROM_AUTO_1R RTLNAME dft_p_ZL22cos_coefficients_table_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_p_ZL22sin_coefficients_table_0_ROM_AUTO_1R RTLNAME dft_p_ZL22sin_coefficients_table_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_flow_control_loop_pipe RTLNAME dft_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dft_flow_control_loop_pipe_U}
    }
  }
}
