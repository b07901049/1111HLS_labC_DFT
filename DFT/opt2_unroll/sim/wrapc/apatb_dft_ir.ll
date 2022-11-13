; ModuleID = 'D:/1111HLS/LabC/DFT/DFT/opt2_unroll/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_dft_ir(float* noalias nonnull readonly "fpga.decayed.dim.hint"="1024" %real_sample, float* noalias nocapture nonnull readnone "fpga.decayed.dim.hint"="1024" %imag_sample, float* noalias nonnull "fpga.decayed.dim.hint"="1024" %real_op, float* noalias nonnull "fpga.decayed.dim.hint"="1024" %imag_op) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %real_sample_copy = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %imag_sample_copy = bitcast i8* %malloccall1 to [1024 x float]*
  %malloccall2_0 = call i8* @malloc(i64 196)
  %malloccall2_1 = call i8* @malloc(i64 196)
  %malloccall2_2 = call i8* @malloc(i64 196)
  %malloccall2_3 = call i8* @malloc(i64 196)
  %malloccall2_4 = call i8* @malloc(i64 196)
  %malloccall2_5 = call i8* @malloc(i64 196)
  %malloccall2_6 = call i8* @malloc(i64 196)
  %malloccall2_7 = call i8* @malloc(i64 196)
  %malloccall2_8 = call i8* @malloc(i64 196)
  %malloccall2_9 = call i8* @malloc(i64 196)
  %malloccall2_10 = call i8* @malloc(i64 196)
  %malloccall2_11 = call i8* @malloc(i64 196)
  %malloccall2_12 = call i8* @malloc(i64 196)
  %malloccall2_13 = call i8* @malloc(i64 196)
  %malloccall2_14 = call i8* @malloc(i64 196)
  %malloccall2_15 = call i8* @malloc(i64 196)
  %malloccall2_16 = call i8* @malloc(i64 196)
  %malloccall2_17 = call i8* @malloc(i64 196)
  %malloccall2_18 = call i8* @malloc(i64 196)
  %malloccall2_19 = call i8* @malloc(i64 196)
  %malloccall2_20 = call i8* @malloc(i64 196)
  %real_op_copy_0 = bitcast i8* %malloccall2_0 to [49 x float]*
  %real_op_copy_1 = bitcast i8* %malloccall2_1 to [49 x float]*
  %real_op_copy_2 = bitcast i8* %malloccall2_2 to [49 x float]*
  %real_op_copy_3 = bitcast i8* %malloccall2_3 to [49 x float]*
  %real_op_copy_4 = bitcast i8* %malloccall2_4 to [49 x float]*
  %real_op_copy_5 = bitcast i8* %malloccall2_5 to [49 x float]*
  %real_op_copy_6 = bitcast i8* %malloccall2_6 to [49 x float]*
  %real_op_copy_7 = bitcast i8* %malloccall2_7 to [49 x float]*
  %real_op_copy_8 = bitcast i8* %malloccall2_8 to [49 x float]*
  %real_op_copy_9 = bitcast i8* %malloccall2_9 to [49 x float]*
  %real_op_copy_10 = bitcast i8* %malloccall2_10 to [49 x float]*
  %real_op_copy_11 = bitcast i8* %malloccall2_11 to [49 x float]*
  %real_op_copy_12 = bitcast i8* %malloccall2_12 to [49 x float]*
  %real_op_copy_13 = bitcast i8* %malloccall2_13 to [49 x float]*
  %real_op_copy_14 = bitcast i8* %malloccall2_14 to [49 x float]*
  %real_op_copy_15 = bitcast i8* %malloccall2_15 to [49 x float]*
  %real_op_copy_16 = bitcast i8* %malloccall2_16 to [49 x float]*
  %real_op_copy_17 = bitcast i8* %malloccall2_17 to [49 x float]*
  %real_op_copy_18 = bitcast i8* %malloccall2_18 to [49 x float]*
  %real_op_copy_19 = bitcast i8* %malloccall2_19 to [49 x float]*
  %real_op_copy_20 = bitcast i8* %malloccall2_20 to [49 x float]*
  %malloccall3_0 = call i8* @malloc(i64 196)
  %malloccall3_1 = call i8* @malloc(i64 196)
  %malloccall3_2 = call i8* @malloc(i64 196)
  %malloccall3_3 = call i8* @malloc(i64 196)
  %malloccall3_4 = call i8* @malloc(i64 196)
  %malloccall3_5 = call i8* @malloc(i64 196)
  %malloccall3_6 = call i8* @malloc(i64 196)
  %malloccall3_7 = call i8* @malloc(i64 196)
  %malloccall3_8 = call i8* @malloc(i64 196)
  %malloccall3_9 = call i8* @malloc(i64 196)
  %malloccall3_10 = call i8* @malloc(i64 196)
  %malloccall3_11 = call i8* @malloc(i64 196)
  %malloccall3_12 = call i8* @malloc(i64 196)
  %malloccall3_13 = call i8* @malloc(i64 196)
  %malloccall3_14 = call i8* @malloc(i64 196)
  %malloccall3_15 = call i8* @malloc(i64 196)
  %malloccall3_16 = call i8* @malloc(i64 196)
  %malloccall3_17 = call i8* @malloc(i64 196)
  %malloccall3_18 = call i8* @malloc(i64 196)
  %malloccall3_19 = call i8* @malloc(i64 196)
  %malloccall3_20 = call i8* @malloc(i64 196)
  %imag_op_copy_0 = bitcast i8* %malloccall3_0 to [49 x float]*
  %imag_op_copy_1 = bitcast i8* %malloccall3_1 to [49 x float]*
  %imag_op_copy_2 = bitcast i8* %malloccall3_2 to [49 x float]*
  %imag_op_copy_3 = bitcast i8* %malloccall3_3 to [49 x float]*
  %imag_op_copy_4 = bitcast i8* %malloccall3_4 to [49 x float]*
  %imag_op_copy_5 = bitcast i8* %malloccall3_5 to [49 x float]*
  %imag_op_copy_6 = bitcast i8* %malloccall3_6 to [49 x float]*
  %imag_op_copy_7 = bitcast i8* %malloccall3_7 to [49 x float]*
  %imag_op_copy_8 = bitcast i8* %malloccall3_8 to [49 x float]*
  %imag_op_copy_9 = bitcast i8* %malloccall3_9 to [49 x float]*
  %imag_op_copy_10 = bitcast i8* %malloccall3_10 to [49 x float]*
  %imag_op_copy_11 = bitcast i8* %malloccall3_11 to [49 x float]*
  %imag_op_copy_12 = bitcast i8* %malloccall3_12 to [49 x float]*
  %imag_op_copy_13 = bitcast i8* %malloccall3_13 to [49 x float]*
  %imag_op_copy_14 = bitcast i8* %malloccall3_14 to [49 x float]*
  %imag_op_copy_15 = bitcast i8* %malloccall3_15 to [49 x float]*
  %imag_op_copy_16 = bitcast i8* %malloccall3_16 to [49 x float]*
  %imag_op_copy_17 = bitcast i8* %malloccall3_17 to [49 x float]*
  %imag_op_copy_18 = bitcast i8* %malloccall3_18 to [49 x float]*
  %imag_op_copy_19 = bitcast i8* %malloccall3_19 to [49 x float]*
  %imag_op_copy_20 = bitcast i8* %malloccall3_20 to [49 x float]*
  %0 = bitcast float* %real_sample to [1024 x float]*
  %1 = bitcast float* %imag_sample to [1024 x float]*
  %2 = bitcast float* %real_op to [1024 x float]*
  %3 = bitcast float* %imag_op to [1024 x float]*
  call void @copy_in([1024 x float]* nonnull %0, [1024 x float]* %real_sample_copy, [1024 x float]* nonnull %1, [1024 x float]* %imag_sample_copy, [1024 x float]* nonnull %2, [49 x float]* %real_op_copy_0, [49 x float]* %real_op_copy_1, [49 x float]* %real_op_copy_2, [49 x float]* %real_op_copy_3, [49 x float]* %real_op_copy_4, [49 x float]* %real_op_copy_5, [49 x float]* %real_op_copy_6, [49 x float]* %real_op_copy_7, [49 x float]* %real_op_copy_8, [49 x float]* %real_op_copy_9, [49 x float]* %real_op_copy_10, [49 x float]* %real_op_copy_11, [49 x float]* %real_op_copy_12, [49 x float]* %real_op_copy_13, [49 x float]* %real_op_copy_14, [49 x float]* %real_op_copy_15, [49 x float]* %real_op_copy_16, [49 x float]* %real_op_copy_17, [49 x float]* %real_op_copy_18, [49 x float]* %real_op_copy_19, [49 x float]* %real_op_copy_20, [1024 x float]* nonnull %3, [49 x float]* %imag_op_copy_0, [49 x float]* %imag_op_copy_1, [49 x float]* %imag_op_copy_2, [49 x float]* %imag_op_copy_3, [49 x float]* %imag_op_copy_4, [49 x float]* %imag_op_copy_5, [49 x float]* %imag_op_copy_6, [49 x float]* %imag_op_copy_7, [49 x float]* %imag_op_copy_8, [49 x float]* %imag_op_copy_9, [49 x float]* %imag_op_copy_10, [49 x float]* %imag_op_copy_11, [49 x float]* %imag_op_copy_12, [49 x float]* %imag_op_copy_13, [49 x float]* %imag_op_copy_14, [49 x float]* %imag_op_copy_15, [49 x float]* %imag_op_copy_16, [49 x float]* %imag_op_copy_17, [49 x float]* %imag_op_copy_18, [49 x float]* %imag_op_copy_19, [49 x float]* %imag_op_copy_20)
  %4 = getelementptr inbounds [1024 x float], [1024 x float]* %real_sample_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1024 x float], [1024 x float]* %imag_sample_copy, i32 0, i32 0
  %_0 = getelementptr [49 x float], [49 x float]* %real_op_copy_0, i32 0, i32 0
  %_1 = getelementptr [49 x float], [49 x float]* %real_op_copy_1, i32 0, i32 0
  %_2 = getelementptr [49 x float], [49 x float]* %real_op_copy_2, i32 0, i32 0
  %_3 = getelementptr [49 x float], [49 x float]* %real_op_copy_3, i32 0, i32 0
  %_4 = getelementptr [49 x float], [49 x float]* %real_op_copy_4, i32 0, i32 0
  %_5 = getelementptr [49 x float], [49 x float]* %real_op_copy_5, i32 0, i32 0
  %_6 = getelementptr [49 x float], [49 x float]* %real_op_copy_6, i32 0, i32 0
  %_7 = getelementptr [49 x float], [49 x float]* %real_op_copy_7, i32 0, i32 0
  %_8 = getelementptr [49 x float], [49 x float]* %real_op_copy_8, i32 0, i32 0
  %_9 = getelementptr [49 x float], [49 x float]* %real_op_copy_9, i32 0, i32 0
  %_10 = getelementptr [49 x float], [49 x float]* %real_op_copy_10, i32 0, i32 0
  %_11 = getelementptr [49 x float], [49 x float]* %real_op_copy_11, i32 0, i32 0
  %_12 = getelementptr [49 x float], [49 x float]* %real_op_copy_12, i32 0, i32 0
  %_13 = getelementptr [49 x float], [49 x float]* %real_op_copy_13, i32 0, i32 0
  %_14 = getelementptr [49 x float], [49 x float]* %real_op_copy_14, i32 0, i32 0
  %_15 = getelementptr [49 x float], [49 x float]* %real_op_copy_15, i32 0, i32 0
  %_16 = getelementptr [49 x float], [49 x float]* %real_op_copy_16, i32 0, i32 0
  %_17 = getelementptr [49 x float], [49 x float]* %real_op_copy_17, i32 0, i32 0
  %_18 = getelementptr [49 x float], [49 x float]* %real_op_copy_18, i32 0, i32 0
  %_19 = getelementptr [49 x float], [49 x float]* %real_op_copy_19, i32 0, i32 0
  %_20 = getelementptr [49 x float], [49 x float]* %real_op_copy_20, i32 0, i32 0
  %_04 = getelementptr [49 x float], [49 x float]* %imag_op_copy_0, i32 0, i32 0
  %_110 = getelementptr [49 x float], [49 x float]* %imag_op_copy_1, i32 0, i32 0
  %_211 = getelementptr [49 x float], [49 x float]* %imag_op_copy_2, i32 0, i32 0
  %_312 = getelementptr [49 x float], [49 x float]* %imag_op_copy_3, i32 0, i32 0
  %_413 = getelementptr [49 x float], [49 x float]* %imag_op_copy_4, i32 0, i32 0
  %_514 = getelementptr [49 x float], [49 x float]* %imag_op_copy_5, i32 0, i32 0
  %_615 = getelementptr [49 x float], [49 x float]* %imag_op_copy_6, i32 0, i32 0
  %_716 = getelementptr [49 x float], [49 x float]* %imag_op_copy_7, i32 0, i32 0
  %_817 = getelementptr [49 x float], [49 x float]* %imag_op_copy_8, i32 0, i32 0
  %_918 = getelementptr [49 x float], [49 x float]* %imag_op_copy_9, i32 0, i32 0
  %_1019 = getelementptr [49 x float], [49 x float]* %imag_op_copy_10, i32 0, i32 0
  %_1120 = getelementptr [49 x float], [49 x float]* %imag_op_copy_11, i32 0, i32 0
  %_1221 = getelementptr [49 x float], [49 x float]* %imag_op_copy_12, i32 0, i32 0
  %_1322 = getelementptr [49 x float], [49 x float]* %imag_op_copy_13, i32 0, i32 0
  %_1423 = getelementptr [49 x float], [49 x float]* %imag_op_copy_14, i32 0, i32 0
  %_1524 = getelementptr [49 x float], [49 x float]* %imag_op_copy_15, i32 0, i32 0
  %_1625 = getelementptr [49 x float], [49 x float]* %imag_op_copy_16, i32 0, i32 0
  %_1726 = getelementptr [49 x float], [49 x float]* %imag_op_copy_17, i32 0, i32 0
  %_1827 = getelementptr [49 x float], [49 x float]* %imag_op_copy_18, i32 0, i32 0
  %_1928 = getelementptr [49 x float], [49 x float]* %imag_op_copy_19, i32 0, i32 0
  %_2029 = getelementptr [49 x float], [49 x float]* %imag_op_copy_20, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_4, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_5, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_6, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_7, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_8, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_9, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_10, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_11, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_12, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_13, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_14, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_16, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_17, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_18, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_19, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_20, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_04, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_110, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_211, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_312, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_413, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_514, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_615, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_716, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_817, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_918, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1019, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1120, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1221, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1322, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1423, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1524, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1625, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1726, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1827, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1928, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_2029, i32 0, i32 1, i32 0, i1 false) ], !dbg !383
  call void @apatb_dft_hw(float* %4, float* %5, [49 x float]* %real_op_copy_0, [49 x float]* %real_op_copy_1, [49 x float]* %real_op_copy_2, [49 x float]* %real_op_copy_3, [49 x float]* %real_op_copy_4, [49 x float]* %real_op_copy_5, [49 x float]* %real_op_copy_6, [49 x float]* %real_op_copy_7, [49 x float]* %real_op_copy_8, [49 x float]* %real_op_copy_9, [49 x float]* %real_op_copy_10, [49 x float]* %real_op_copy_11, [49 x float]* %real_op_copy_12, [49 x float]* %real_op_copy_13, [49 x float]* %real_op_copy_14, [49 x float]* %real_op_copy_15, [49 x float]* %real_op_copy_16, [49 x float]* %real_op_copy_17, [49 x float]* %real_op_copy_18, [49 x float]* %real_op_copy_19, [49 x float]* %real_op_copy_20, [49 x float]* %imag_op_copy_0, [49 x float]* %imag_op_copy_1, [49 x float]* %imag_op_copy_2, [49 x float]* %imag_op_copy_3, [49 x float]* %imag_op_copy_4, [49 x float]* %imag_op_copy_5, [49 x float]* %imag_op_copy_6, [49 x float]* %imag_op_copy_7, [49 x float]* %imag_op_copy_8, [49 x float]* %imag_op_copy_9, [49 x float]* %imag_op_copy_10, [49 x float]* %imag_op_copy_11, [49 x float]* %imag_op_copy_12, [49 x float]* %imag_op_copy_13, [49 x float]* %imag_op_copy_14, [49 x float]* %imag_op_copy_15, [49 x float]* %imag_op_copy_16, [49 x float]* %imag_op_copy_17, [49 x float]* %imag_op_copy_18, [49 x float]* %imag_op_copy_19, [49 x float]* %imag_op_copy_20)
  call void @copy_back([1024 x float]* %0, [1024 x float]* %real_sample_copy, [1024 x float]* %1, [1024 x float]* %imag_sample_copy, [1024 x float]* %2, [49 x float]* %real_op_copy_0, [49 x float]* %real_op_copy_1, [49 x float]* %real_op_copy_2, [49 x float]* %real_op_copy_3, [49 x float]* %real_op_copy_4, [49 x float]* %real_op_copy_5, [49 x float]* %real_op_copy_6, [49 x float]* %real_op_copy_7, [49 x float]* %real_op_copy_8, [49 x float]* %real_op_copy_9, [49 x float]* %real_op_copy_10, [49 x float]* %real_op_copy_11, [49 x float]* %real_op_copy_12, [49 x float]* %real_op_copy_13, [49 x float]* %real_op_copy_14, [49 x float]* %real_op_copy_15, [49 x float]* %real_op_copy_16, [49 x float]* %real_op_copy_17, [49 x float]* %real_op_copy_18, [49 x float]* %real_op_copy_19, [49 x float]* %real_op_copy_20, [1024 x float]* %3, [49 x float]* %imag_op_copy_0, [49 x float]* %imag_op_copy_1, [49 x float]* %imag_op_copy_2, [49 x float]* %imag_op_copy_3, [49 x float]* %imag_op_copy_4, [49 x float]* %imag_op_copy_5, [49 x float]* %imag_op_copy_6, [49 x float]* %imag_op_copy_7, [49 x float]* %imag_op_copy_8, [49 x float]* %imag_op_copy_9, [49 x float]* %imag_op_copy_10, [49 x float]* %imag_op_copy_11, [49 x float]* %imag_op_copy_12, [49 x float]* %imag_op_copy_13, [49 x float]* %imag_op_copy_14, [49 x float]* %imag_op_copy_15, [49 x float]* %imag_op_copy_16, [49 x float]* %imag_op_copy_17, [49 x float]* %imag_op_copy_18, [49 x float]* %imag_op_copy_19, [49 x float]* %imag_op_copy_20)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2_0)
  call void @free(i8* %malloccall2_1)
  call void @free(i8* %malloccall2_2)
  call void @free(i8* %malloccall2_3)
  call void @free(i8* %malloccall2_4)
  call void @free(i8* %malloccall2_5)
  call void @free(i8* %malloccall2_6)
  call void @free(i8* %malloccall2_7)
  call void @free(i8* %malloccall2_8)
  call void @free(i8* %malloccall2_9)
  call void @free(i8* %malloccall2_10)
  call void @free(i8* %malloccall2_11)
  call void @free(i8* %malloccall2_12)
  call void @free(i8* %malloccall2_13)
  call void @free(i8* %malloccall2_14)
  call void @free(i8* %malloccall2_15)
  call void @free(i8* %malloccall2_16)
  call void @free(i8* %malloccall2_17)
  call void @free(i8* %malloccall2_18)
  call void @free(i8* %malloccall2_19)
  call void @free(i8* %malloccall2_20)
  call void @free(i8* %malloccall3_0)
  call void @free(i8* %malloccall3_1)
  call void @free(i8* %malloccall3_2)
  call void @free(i8* %malloccall3_3)
  call void @free(i8* %malloccall3_4)
  call void @free(i8* %malloccall3_5)
  call void @free(i8* %malloccall3_6)
  call void @free(i8* %malloccall3_7)
  call void @free(i8* %malloccall3_8)
  call void @free(i8* %malloccall3_9)
  call void @free(i8* %malloccall3_10)
  call void @free(i8* %malloccall3_11)
  call void @free(i8* %malloccall3_12)
  call void @free(i8* %malloccall3_13)
  call void @free(i8* %malloccall3_14)
  call void @free(i8* %malloccall3_15)
  call void @free(i8* %malloccall3_16)
  call void @free(i8* %malloccall3_17)
  call void @free(i8* %malloccall3_18)
  call void @free(i8* %malloccall3_19)
  call void @free(i8* %malloccall3_20)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [1024 x float]* %0, null
  %3 = icmp eq [1024 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x float], [1024 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.3.4([49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_16, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_17, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_18, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_19, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_20, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [49 x float]* %_0, null
  %2 = icmp eq [1024 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 21
  %5 = udiv i64 %for.loop.idx1, 21
  %dst.addr_0 = getelementptr [49 x float], [49 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [49 x float], [49 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [49 x float], [49 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [49 x float], [49 x float]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [49 x float], [49 x float]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [49 x float], [49 x float]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [49 x float], [49 x float]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [49 x float], [49 x float]* %_7, i64 0, i64 %5
  %dst.addr_8 = getelementptr [49 x float], [49 x float]* %_8, i64 0, i64 %5
  %dst.addr_9 = getelementptr [49 x float], [49 x float]* %_9, i64 0, i64 %5
  %dst.addr_10 = getelementptr [49 x float], [49 x float]* %_10, i64 0, i64 %5
  %dst.addr_11 = getelementptr [49 x float], [49 x float]* %_11, i64 0, i64 %5
  %dst.addr_12 = getelementptr [49 x float], [49 x float]* %_12, i64 0, i64 %5
  %dst.addr_13 = getelementptr [49 x float], [49 x float]* %_13, i64 0, i64 %5
  %dst.addr_14 = getelementptr [49 x float], [49 x float]* %_14, i64 0, i64 %5
  %dst.addr_15 = getelementptr [49 x float], [49 x float]* %_15, i64 0, i64 %5
  %dst.addr_16 = getelementptr [49 x float], [49 x float]* %_16, i64 0, i64 %5
  %dst.addr_17 = getelementptr [49 x float], [49 x float]* %_17, i64 0, i64 %5
  %dst.addr_18 = getelementptr [49 x float], [49 x float]* %_18, i64 0, i64 %5
  %dst.addr_19 = getelementptr [49 x float], [49 x float]* %_19, i64 0, i64 %5
  %dst.addr_20 = getelementptr [49 x float], [49 x float]* %_20, i64 0, i64 %5
  %src.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i5
  switch i5 %7, label %dst.addr.case.20 [
    i5 0, label %dst.addr.case.0
    i5 1, label %dst.addr.case.1
    i5 2, label %dst.addr.case.2
    i5 3, label %dst.addr.case.3
    i5 4, label %dst.addr.case.4
    i5 5, label %dst.addr.case.5
    i5 6, label %dst.addr.case.6
    i5 7, label %dst.addr.case.7
    i5 8, label %dst.addr.case.8
    i5 9, label %dst.addr.case.9
    i5 10, label %dst.addr.case.10
    i5 11, label %dst.addr.case.11
    i5 12, label %dst.addr.case.12
    i5 13, label %dst.addr.case.13
    i5 14, label %dst.addr.case.14
    i5 15, label %dst.addr.case.15
    i5 -16, label %dst.addr.case.16
    i5 -15, label %dst.addr.case.17
    i5 -14, label %dst.addr.case.18
    i5 -13, label %dst.addr.case.19
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_4, align 4
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_5, align 4
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_6, align 4
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_7, align 4
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_8, align 4
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_9, align 4
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_10, align 4
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_11, align 4
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_12, align 4
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_13, align 4
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_14, align 4
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_15, align 4
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_16, align 4
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_17, align 4
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_18, align 4
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_19, align 4
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  %8 = icmp eq i5 %7, -12
  call void @llvm.assume(i1 %8)
  store float %6, float* %dst.addr_20, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([1024 x float]* noalias readonly "orig.arg.no"="0", [1024 x float]* noalias "orig.arg.no"="1", [1024 x float]* noalias readonly "orig.arg.no"="2", [1024 x float]* noalias "orig.arg.no"="3", [1024 x float]* noalias readonly "orig.arg.no"="4", [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_17, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_18, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_19, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_20, [1024 x float]* noalias readonly "orig.arg.no"="6", [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_413, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_514, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_615, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_716, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_817, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_918, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1019, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1120, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1221, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1322, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1423, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1524, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1625, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1726, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1827, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1928, [49 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_2029) #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %1, [1024 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %3, [1024 x float]* %2)
  call void @onebyonecpy_hls.p0a1024f32.3.4([49 x float]* %_0, [49 x float]* %_1, [49 x float]* %_2, [49 x float]* %_3, [49 x float]* %_4, [49 x float]* %_5, [49 x float]* %_6, [49 x float]* %_7, [49 x float]* %_8, [49 x float]* %_9, [49 x float]* %_10, [49 x float]* %_11, [49 x float]* %_12, [49 x float]* %_13, [49 x float]* %_14, [49 x float]* %_15, [49 x float]* %_16, [49 x float]* %_17, [49 x float]* %_18, [49 x float]* %_19, [49 x float]* %_20, [1024 x float]* %4)
  call void @onebyonecpy_hls.p0a1024f32.3.4([49 x float]* %_01, [49 x float]* %_110, [49 x float]* %_211, [49 x float]* %_312, [49 x float]* %_413, [49 x float]* %_514, [49 x float]* %_615, [49 x float]* %_716, [49 x float]* %_817, [49 x float]* %_918, [49 x float]* %_1019, [49 x float]* %_1120, [49 x float]* %_1221, [49 x float]* %_1322, [49 x float]* %_1423, [49 x float]* %_1524, [49 x float]* %_1625, [49 x float]* %_1726, [49 x float]* %_1827, [49 x float]* %_1928, [49 x float]* %_2029, [1024 x float]* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20) #2 {
entry:
  %1 = icmp eq [1024 x float]* %0, null
  %2 = icmp eq [49 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 21
  %5 = udiv i64 %for.loop.idx1, 21
  %src.addr_0 = getelementptr [49 x float], [49 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [49 x float], [49 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [49 x float], [49 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [49 x float], [49 x float]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [49 x float], [49 x float]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [49 x float], [49 x float]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [49 x float], [49 x float]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [49 x float], [49 x float]* %_7, i64 0, i64 %5
  %src.addr_8 = getelementptr [49 x float], [49 x float]* %_8, i64 0, i64 %5
  %src.addr_9 = getelementptr [49 x float], [49 x float]* %_9, i64 0, i64 %5
  %src.addr_10 = getelementptr [49 x float], [49 x float]* %_10, i64 0, i64 %5
  %src.addr_11 = getelementptr [49 x float], [49 x float]* %_11, i64 0, i64 %5
  %src.addr_12 = getelementptr [49 x float], [49 x float]* %_12, i64 0, i64 %5
  %src.addr_13 = getelementptr [49 x float], [49 x float]* %_13, i64 0, i64 %5
  %src.addr_14 = getelementptr [49 x float], [49 x float]* %_14, i64 0, i64 %5
  %src.addr_15 = getelementptr [49 x float], [49 x float]* %_15, i64 0, i64 %5
  %src.addr_16 = getelementptr [49 x float], [49 x float]* %_16, i64 0, i64 %5
  %src.addr_17 = getelementptr [49 x float], [49 x float]* %_17, i64 0, i64 %5
  %src.addr_18 = getelementptr [49 x float], [49 x float]* %_18, i64 0, i64 %5
  %src.addr_19 = getelementptr [49 x float], [49 x float]* %_19, i64 0, i64 %5
  %src.addr_20 = getelementptr [49 x float], [49 x float]* %_20, i64 0, i64 %5
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %src.addr.case.20 [
    i5 0, label %src.addr.case.0
    i5 1, label %src.addr.case.1
    i5 2, label %src.addr.case.2
    i5 3, label %src.addr.case.3
    i5 4, label %src.addr.case.4
    i5 5, label %src.addr.case.5
    i5 6, label %src.addr.case.6
    i5 7, label %src.addr.case.7
    i5 8, label %src.addr.case.8
    i5 9, label %src.addr.case.9
    i5 10, label %src.addr.case.10
    i5 11, label %src.addr.case.11
    i5 12, label %src.addr.case.12
    i5 13, label %src.addr.case.13
    i5 14, label %src.addr.case.14
    i5 15, label %src.addr.case.15
    i5 -16, label %src.addr.case.16
    i5 -15, label %src.addr.case.17
    i5 -14, label %src.addr.case.18
    i5 -13, label %src.addr.case.19
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_110 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_211 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_312 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_413 = load float, float* %src.addr_4, align 4
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_514 = load float, float* %src.addr_5, align 4
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_615 = load float, float* %src.addr_6, align 4
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_716 = load float, float* %src.addr_7, align 4
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_817 = load float, float* %src.addr_8, align 4
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_918 = load float, float* %src.addr_9, align 4
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1019 = load float, float* %src.addr_10, align 4
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_1120 = load float, float* %src.addr_11, align 4
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_1221 = load float, float* %src.addr_12, align 4
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_1322 = load float, float* %src.addr_13, align 4
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_1423 = load float, float* %src.addr_14, align 4
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_1524 = load float, float* %src.addr_15, align 4
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  %_1625 = load float, float* %src.addr_16, align 4
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  %_1726 = load float, float* %src.addr_17, align 4
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  %_1827 = load float, float* %src.addr_18, align 4
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  %_1928 = load float, float* %src.addr_19, align 4
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  %7 = icmp eq i5 %6, -12
  call void @llvm.assume(i1 %7)
  %_2029 = load float, float* %src.addr_20, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %8 = phi float [ %_01, %src.addr.case.0 ], [ %_110, %src.addr.case.1 ], [ %_211, %src.addr.case.2 ], [ %_312, %src.addr.case.3 ], [ %_413, %src.addr.case.4 ], [ %_514, %src.addr.case.5 ], [ %_615, %src.addr.case.6 ], [ %_716, %src.addr.case.7 ], [ %_817, %src.addr.case.8 ], [ %_918, %src.addr.case.9 ], [ %_1019, %src.addr.case.10 ], [ %_1120, %src.addr.case.11 ], [ %_1221, %src.addr.case.12 ], [ %_1322, %src.addr.case.13 ], [ %_1423, %src.addr.case.14 ], [ %_1524, %src.addr.case.15 ], [ %_1625, %src.addr.case.16 ], [ %_1726, %src.addr.case.17 ], [ %_1827, %src.addr.case.18 ], [ %_1928, %src.addr.case.19 ], [ %_2029, %src.addr.case.20 ]
  store float %8, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([1024 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "orig.arg.no"="1", [1024 x float]* noalias "orig.arg.no"="2", [1024 x float]* noalias readonly "orig.arg.no"="3", [1024 x float]* noalias "orig.arg.no"="4", [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_17, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_18, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_19, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_20, [1024 x float]* noalias "orig.arg.no"="6", [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_413, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_514, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_615, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_716, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_817, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_918, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1019, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1120, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1221, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1322, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1423, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1524, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1625, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1726, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1827, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1928, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_2029) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %0, [1024 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %2, [1024 x float]* %3)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %4, [49 x float]* %_0, [49 x float]* %_1, [49 x float]* %_2, [49 x float]* %_3, [49 x float]* %_4, [49 x float]* %_5, [49 x float]* %_6, [49 x float]* %_7, [49 x float]* %_8, [49 x float]* %_9, [49 x float]* %_10, [49 x float]* %_11, [49 x float]* %_12, [49 x float]* %_13, [49 x float]* %_14, [49 x float]* %_15, [49 x float]* %_16, [49 x float]* %_17, [49 x float]* %_18, [49 x float]* %_19, [49 x float]* %_20)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %5, [49 x float]* %_01, [49 x float]* %_110, [49 x float]* %_211, [49 x float]* %_312, [49 x float]* %_413, [49 x float]* %_514, [49 x float]* %_615, [49 x float]* %_716, [49 x float]* %_817, [49 x float]* %_918, [49 x float]* %_1019, [49 x float]* %_1120, [49 x float]* %_1221, [49 x float]* %_1322, [49 x float]* %_1423, [49 x float]* %_1524, [49 x float]* %_1625, [49 x float]* %_1726, [49 x float]* %_1827, [49 x float]* %_1928, [49 x float]* %_2029)
  ret void
}

declare void @apatb_dft_hw(float*, float*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([1024 x float]* noalias "orig.arg.no"="0", [1024 x float]* noalias readonly "orig.arg.no"="1", [1024 x float]* noalias "orig.arg.no"="2", [1024 x float]* noalias readonly "orig.arg.no"="3", [1024 x float]* noalias "orig.arg.no"="4", [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_17, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_18, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_19, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_20, [1024 x float]* noalias "orig.arg.no"="6", [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_01, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_413, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_514, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_615, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_716, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_817, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_918, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1019, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1120, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1221, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1322, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1423, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1524, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1625, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1726, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1827, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_1928, [49 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_2029) #5 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %4, [49 x float]* %_0, [49 x float]* %_1, [49 x float]* %_2, [49 x float]* %_3, [49 x float]* %_4, [49 x float]* %_5, [49 x float]* %_6, [49 x float]* %_7, [49 x float]* %_8, [49 x float]* %_9, [49 x float]* %_10, [49 x float]* %_11, [49 x float]* %_12, [49 x float]* %_13, [49 x float]* %_14, [49 x float]* %_15, [49 x float]* %_16, [49 x float]* %_17, [49 x float]* %_18, [49 x float]* %_19, [49 x float]* %_20)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %5, [49 x float]* %_01, [49 x float]* %_110, [49 x float]* %_211, [49 x float]* %_312, [49 x float]* %_413, [49 x float]* %_514, [49 x float]* %_615, [49 x float]* %_716, [49 x float]* %_817, [49 x float]* %_918, [49 x float]* %_1019, [49 x float]* %_1120, [49 x float]* %_1221, [49 x float]* %_1322, [49 x float]* %_1423, [49 x float]* %_1524, [49 x float]* %_1625, [49 x float]* %_1726, [49 x float]* %_1827, [49 x float]* %_1928, [49 x float]* %_2029)
  ret void
}

define void @dft_hw_stub_wrapper(float*, float*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*, [49 x float]*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %44 = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %45 = bitcast i8* %malloccall1 to [1024 x float]*
  %46 = bitcast float* %0 to [1024 x float]*
  %47 = bitcast float* %1 to [1024 x float]*
  call void @copy_out([1024 x float]* null, [1024 x float]* %46, [1024 x float]* null, [1024 x float]* %47, [1024 x float]* %44, [49 x float]* %2, [49 x float]* %3, [49 x float]* %4, [49 x float]* %5, [49 x float]* %6, [49 x float]* %7, [49 x float]* %8, [49 x float]* %9, [49 x float]* %10, [49 x float]* %11, [49 x float]* %12, [49 x float]* %13, [49 x float]* %14, [49 x float]* %15, [49 x float]* %16, [49 x float]* %17, [49 x float]* %18, [49 x float]* %19, [49 x float]* %20, [49 x float]* %21, [49 x float]* %22, [1024 x float]* %45, [49 x float]* %23, [49 x float]* %24, [49 x float]* %25, [49 x float]* %26, [49 x float]* %27, [49 x float]* %28, [49 x float]* %29, [49 x float]* %30, [49 x float]* %31, [49 x float]* %32, [49 x float]* %33, [49 x float]* %34, [49 x float]* %35, [49 x float]* %36, [49 x float]* %37, [49 x float]* %38, [49 x float]* %39, [49 x float]* %40, [49 x float]* %41, [49 x float]* %42, [49 x float]* %43)
  %48 = bitcast [1024 x float]* %46 to float*
  %49 = bitcast [1024 x float]* %47 to float*
  %50 = bitcast [1024 x float]* %44 to float*
  %51 = bitcast [1024 x float]* %45 to float*
  call void @dft_hw_stub(float* %48, float* %49, float* %50, float* %51)
  call void @copy_in([1024 x float]* null, [1024 x float]* %46, [1024 x float]* null, [1024 x float]* %47, [1024 x float]* %44, [49 x float]* %2, [49 x float]* %3, [49 x float]* %4, [49 x float]* %5, [49 x float]* %6, [49 x float]* %7, [49 x float]* %8, [49 x float]* %9, [49 x float]* %10, [49 x float]* %11, [49 x float]* %12, [49 x float]* %13, [49 x float]* %14, [49 x float]* %15, [49 x float]* %16, [49 x float]* %17, [49 x float]* %18, [49 x float]* %19, [49 x float]* %20, [49 x float]* %21, [49 x float]* %22, [1024 x float]* %45, [49 x float]* %23, [49 x float]* %24, [49 x float]* %25, [49 x float]* %26, [49 x float]* %27, [49 x float]* %28, [49 x float]* %29, [49 x float]* %30, [49 x float]* %31, [49 x float]* %32, [49 x float]* %33, [49 x float]* %34, [49 x float]* %35, [49 x float]* %36, [49 x float]* %37, [49 x float]* %38, [49 x float]* %39, [49 x float]* %40, [49 x float]* %41, [49 x float]* %42, [49 x float]* %43)
  ret void
}

declare void @dft_hw_stub(float*, float*, float*, float*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 15, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "dft", linkageName: "_Z3dftPfS_S_S_", scope: !7, file: !7, line: 5, type: !8, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "DFT/dft.cpp", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTYPE", file: !12, line: 2, baseType: !13)
!12 = !DIFile(filename: "DFT/dft.h", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !16, imports: !27)
!15 = !DIFile(filename: "D:/1111HLS/LabC/DFT/DFT/opt2_unroll/.autopilot/db\5Cdft.pp.0.cpp", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!16 = !{!17, !25}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cos_coefficients_table", linkageName: "_ZL22cos_coefficients_table", scope: !14, file: !19, line: 1, type: !20, isLocal: true, isDefinition: true)
!19 = !DIFile(filename: "DFT/coefficients1024.h", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1048576, elements: !22)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!22 = !{!23, !24}
!23 = !DISubrange(count: 32)
!24 = !DISubrange(count: 1024)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "sin_coefficients_table", linkageName: "_ZL22sin_coefficients_table", scope: !14, file: !19, line: 38, type: !20, isLocal: true, isDefinition: true)
!27 = !{!28, !36, !42, !44, !46, !50, !52, !54, !56, !58, !60, !62, !64, !69, !73, !75, !77, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !104, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !133, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !171, !175, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !201, !205, !209, !211, !213, !215, !220, !224, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !257, !261, !265, !267, !269, !271, !278, !282, !286, !288, !290, !292, !294, !296, !298, !302, !306, !308, !310, !312, !314, !318, !322, !326, !328, !330, !332, !334, !336, !338, !342, !346, !350, !352, !356, !360, !362, !364, !366, !368, !370, !372, !378}
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !30, file: !35, line: 52)
!29 = !DINamespace(name: "std", scope: null)
!30 = !DISubprogram(name: "abs", scope: !31, file: !31, line: 254, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DIFile(filename: "D:/Xilinx/Vitis_HLS/2022.1/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !34}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIFile(filename: "D:/Xilinx/Vitis_HLS/2022.1/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cbits/std_abs.h", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !37, file: !41, line: 83)
!37 = !DISubprogram(name: "acos", scope: !31, file: !31, line: 190, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40}
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !DIFile(filename: "D:/Xilinx/Vitis_HLS/2022.1/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Ccmath", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !43, file: !41, line: 102)
!43 = !DISubprogram(name: "asin", scope: !31, file: !31, line: 189, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !45, file: !41, line: 121)
!45 = !DISubprogram(name: "atan", scope: !31, file: !31, line: 191, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !47, file: !41, line: 140)
!47 = !DISubprogram(name: "atan2", scope: !31, file: !31, line: 192, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DISubroutineType(types: !49)
!49 = !{!40, !40, !40}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !51, file: !41, line: 161)
!51 = !DISubprogram(name: "ceil", scope: !31, file: !31, line: 198, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !53, file: !41, line: 180)
!53 = !DISubprogram(name: "cos", scope: !31, file: !31, line: 184, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !55, file: !41, line: 199)
!55 = !DISubprogram(name: "cosh", scope: !31, file: !31, line: 187, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !57, file: !41, line: 218)
!57 = !DISubprogram(name: "exp", scope: !31, file: !31, line: 193, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !59, file: !41, line: 237)
!59 = !DISubprogram(name: "fabs", scope: !31, file: !31, line: 204, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !61, file: !41, line: 256)
!61 = !DISubprogram(name: "floor", scope: !31, file: !31, line: 199, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !63, file: !41, line: 275)
!63 = !DISubprogram(name: "fmod", scope: !31, file: !31, line: 246, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !65, file: !41, line: 296)
!65 = !DISubprogram(name: "frexp", scope: !31, file: !31, line: 244, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{!40, !40, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !70, file: !41, line: 315)
!70 = !DISubprogram(name: "ldexp", scope: !31, file: !31, line: 243, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DISubroutineType(types: !72)
!72 = !{!40, !40, !34}
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !74, file: !41, line: 334)
!74 = !DISubprogram(name: "log", scope: !31, file: !31, line: 194, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !76, file: !41, line: 353)
!76 = !DISubprogram(name: "log10", scope: !31, file: !31, line: 195, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !78, file: !41, line: 372)
!78 = !DISubprogram(name: "modf", scope: !31, file: !31, line: 245, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DISubroutineType(types: !80)
!80 = !{!40, !40, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !83, file: !41, line: 384)
!83 = !DISubprogram(name: "pow", scope: !31, file: !31, line: 196, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !85, file: !41, line: 421)
!85 = !DISubprogram(name: "sin", scope: !31, file: !31, line: 183, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !87, file: !41, line: 440)
!87 = !DISubprogram(name: "sinh", scope: !31, file: !31, line: 186, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !89, file: !41, line: 459)
!89 = !DISubprogram(name: "sqrt", scope: !31, file: !31, line: 197, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !91, file: !41, line: 478)
!91 = !DISubprogram(name: "tan", scope: !31, file: !31, line: 185, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !93, file: !41, line: 497)
!93 = !DISubprogram(name: "tanh", scope: !31, file: !31, line: 188, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !95, file: !41, line: 1065)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !31, line: 373, baseType: !40)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !97, file: !41, line: 1066)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !31, line: 372, baseType: !13)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !99, file: !41, line: 1069)
!99 = !DISubprogram(name: "acosh", scope: !31, file: !31, line: 705, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !101, file: !41, line: 1070)
!101 = !DISubprogram(name: "acoshf", scope: !31, file: !31, line: 706, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DISubroutineType(types: !103)
!103 = !{!13, !13}
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !105, file: !41, line: 1071)
!105 = !DISubprogram(name: "acoshl", scope: !31, file: !31, line: 707, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !108}
!108 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !110, file: !41, line: 1073)
!110 = !DISubprogram(name: "asinh", scope: !31, file: !31, line: 710, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !112, file: !41, line: 1074)
!112 = !DISubprogram(name: "asinhf", scope: !31, file: !31, line: 711, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !114, file: !41, line: 1075)
!114 = !DISubprogram(name: "asinhl", scope: !31, file: !31, line: 712, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !116, file: !41, line: 1077)
!116 = !DISubprogram(name: "atanh", scope: !31, file: !31, line: 715, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !118, file: !41, line: 1078)
!118 = !DISubprogram(name: "atanhf", scope: !31, file: !31, line: 716, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !120, file: !41, line: 1079)
!120 = !DISubprogram(name: "atanhl", scope: !31, file: !31, line: 717, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !122, file: !41, line: 1081)
!122 = !DISubprogram(name: "cbrt", scope: !31, file: !31, line: 877, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !124, file: !41, line: 1082)
!124 = !DISubprogram(name: "cbrtf", scope: !31, file: !31, line: 878, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !126, file: !41, line: 1083)
!126 = !DISubprogram(name: "cbrtl", scope: !31, file: !31, line: 879, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !128, file: !41, line: 1085)
!128 = !DISubprogram(name: "copysign", scope: !31, file: !31, line: 1063, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !130, file: !41, line: 1086)
!130 = !DISubprogram(name: "copysignf", scope: !31, file: !31, line: 1064, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DISubroutineType(types: !132)
!132 = !{!13, !13, !13}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !134, file: !41, line: 1087)
!134 = !DISubprogram(name: "copysignl", scope: !31, file: !31, line: 1065, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DISubroutineType(types: !136)
!136 = !{!108, !108, !108}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !138, file: !41, line: 1089)
!138 = !DISubprogram(name: "erf", scope: !31, file: !31, line: 901, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !140, file: !41, line: 1090)
!140 = !DISubprogram(name: "erff", scope: !31, file: !31, line: 902, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !142, file: !41, line: 1091)
!142 = !DISubprogram(name: "erfl", scope: !31, file: !31, line: 903, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !144, file: !41, line: 1093)
!144 = !DISubprogram(name: "erfc", scope: !31, file: !31, line: 906, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !146, file: !41, line: 1094)
!146 = !DISubprogram(name: "erfcf", scope: !31, file: !31, line: 907, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !148, file: !41, line: 1095)
!148 = !DISubprogram(name: "erfcl", scope: !31, file: !31, line: 908, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !150, file: !41, line: 1097)
!150 = !DISubprogram(name: "exp2", scope: !31, file: !31, line: 728, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !152, file: !41, line: 1098)
!152 = !DISubprogram(name: "exp2f", scope: !31, file: !31, line: 729, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !154, file: !41, line: 1099)
!154 = !DISubprogram(name: "exp2l", scope: !31, file: !31, line: 730, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !156, file: !41, line: 1101)
!156 = !DISubprogram(name: "expm1", scope: !31, file: !31, line: 734, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !158, file: !41, line: 1102)
!158 = !DISubprogram(name: "expm1f", scope: !31, file: !31, line: 735, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !160, file: !41, line: 1103)
!160 = !DISubprogram(name: "expm1l", scope: !31, file: !31, line: 736, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !162, file: !41, line: 1105)
!162 = !DISubprogram(name: "fdim", scope: !31, file: !31, line: 1109, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !164, file: !41, line: 1106)
!164 = !DISubprogram(name: "fdimf", scope: !31, file: !31, line: 1110, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !166, file: !41, line: 1107)
!166 = !DISubprogram(name: "fdiml", scope: !31, file: !31, line: 1111, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !168, file: !41, line: 1109)
!168 = !DISubprogram(name: "fma", scope: !31, file: !31, line: 1130, type: !169, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DISubroutineType(types: !170)
!170 = !{!40, !40, !40, !40}
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !172, file: !41, line: 1110)
!172 = !DISubprogram(name: "fmaf", scope: !31, file: !31, line: 1131, type: !173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!13, !13, !13, !13}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !176, file: !41, line: 1111)
!176 = !DISubprogram(name: "fmal", scope: !31, file: !31, line: 1132, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!108, !108, !108, !108}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !180, file: !41, line: 1113)
!180 = !DISubprogram(name: "fmax", scope: !31, file: !31, line: 1119, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !182, file: !41, line: 1114)
!182 = !DISubprogram(name: "fmaxf", scope: !31, file: !31, line: 1120, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !184, file: !41, line: 1115)
!184 = !DISubprogram(name: "fmaxl", scope: !31, file: !31, line: 1121, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !186, file: !41, line: 1117)
!186 = !DISubprogram(name: "fmin", scope: !31, file: !31, line: 1124, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !188, file: !41, line: 1118)
!188 = !DISubprogram(name: "fminf", scope: !31, file: !31, line: 1125, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !190, file: !41, line: 1119)
!190 = !DISubprogram(name: "fminl", scope: !31, file: !31, line: 1126, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !192, file: !41, line: 1121)
!192 = !DISubprogram(name: "hypot", scope: !31, file: !31, line: 882, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !194, file: !41, line: 1122)
!194 = !DISubprogram(name: "hypotf", scope: !31, file: !31, line: 883, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !196, file: !41, line: 1123)
!196 = !DISubprogram(name: "hypotl", scope: !31, file: !31, line: 887, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !198, file: !41, line: 1125)
!198 = !DISubprogram(name: "ilogb", scope: !31, file: !31, line: 748, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!34, !40}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !202, file: !41, line: 1126)
!202 = !DISubprogram(name: "ilogbf", scope: !31, file: !31, line: 749, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{!34, !13}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !206, file: !41, line: 1127)
!206 = !DISubprogram(name: "ilogbl", scope: !31, file: !31, line: 750, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!34, !108}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !210, file: !41, line: 1129)
!210 = !DISubprogram(name: "lgamma", scope: !31, file: !31, line: 911, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !212, file: !41, line: 1130)
!212 = !DISubprogram(name: "lgammaf", scope: !31, file: !31, line: 912, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !214, file: !41, line: 1131)
!214 = !DISubprogram(name: "lgammal", scope: !31, file: !31, line: 913, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !216, file: !41, line: 1134)
!216 = !DISubprogram(name: "llrint", scope: !31, file: !31, line: 946, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !40}
!219 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !221, file: !41, line: 1135)
!221 = !DISubprogram(name: "llrintf", scope: !31, file: !31, line: 947, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{!219, !13}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !225, file: !41, line: 1136)
!225 = !DISubprogram(name: "llrintl", scope: !31, file: !31, line: 948, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{!219, !108}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !229, file: !41, line: 1138)
!229 = !DISubprogram(name: "llround", scope: !31, file: !31, line: 1038, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !231, file: !41, line: 1139)
!231 = !DISubprogram(name: "llroundf", scope: !31, file: !31, line: 1039, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !233, file: !41, line: 1140)
!233 = !DISubprogram(name: "llroundl", scope: !31, file: !31, line: 1040, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !235, file: !41, line: 1143)
!235 = !DISubprogram(name: "log1p", scope: !31, file: !31, line: 768, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !237, file: !41, line: 1144)
!237 = !DISubprogram(name: "log1pf", scope: !31, file: !31, line: 769, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !239, file: !41, line: 1145)
!239 = !DISubprogram(name: "log1pl", scope: !31, file: !31, line: 770, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !241, file: !41, line: 1147)
!241 = !DISubprogram(name: "log2", scope: !31, file: !31, line: 773, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !243, file: !41, line: 1148)
!243 = !DISubprogram(name: "log2f", scope: !31, file: !31, line: 774, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !245, file: !41, line: 1149)
!245 = !DISubprogram(name: "log2l", scope: !31, file: !31, line: 775, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !247, file: !41, line: 1151)
!247 = !DISubprogram(name: "logb", scope: !31, file: !31, line: 778, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !249, file: !41, line: 1152)
!249 = !DISubprogram(name: "logbf", scope: !31, file: !31, line: 779, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !251, file: !41, line: 1153)
!251 = !DISubprogram(name: "logbl", scope: !31, file: !31, line: 780, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !253, file: !41, line: 1155)
!253 = !DISubprogram(name: "lrint", scope: !31, file: !31, line: 942, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !40}
!256 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !258, file: !41, line: 1156)
!258 = !DISubprogram(name: "lrintf", scope: !31, file: !31, line: 943, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!256, !13}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !262, file: !41, line: 1157)
!262 = !DISubprogram(name: "lrintl", scope: !31, file: !31, line: 944, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!256, !108}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !266, file: !41, line: 1159)
!266 = !DISubprogram(name: "lround", scope: !31, file: !31, line: 1035, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !268, file: !41, line: 1160)
!268 = !DISubprogram(name: "lroundf", scope: !31, file: !31, line: 1036, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !270, file: !41, line: 1161)
!270 = !DISubprogram(name: "lroundl", scope: !31, file: !31, line: 1037, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !272, file: !41, line: 1163)
!272 = !DISubprogram(name: "nan", scope: !31, file: !31, line: 1087, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!40, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !279, file: !41, line: 1164)
!279 = !DISubprogram(name: "nanf", scope: !31, file: !31, line: 1088, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DISubroutineType(types: !281)
!281 = !{!13, !275}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !283, file: !41, line: 1165)
!283 = !DISubprogram(name: "nanl", scope: !31, file: !31, line: 1089, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!108, !275}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !287, file: !41, line: 1167)
!287 = !DISubprogram(name: "nearbyint", scope: !31, file: !31, line: 931, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !289, file: !41, line: 1168)
!289 = !DISubprogram(name: "nearbyintf", scope: !31, file: !31, line: 932, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !291, file: !41, line: 1169)
!291 = !DISubprogram(name: "nearbyintl", scope: !31, file: !31, line: 933, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !293, file: !41, line: 1171)
!293 = !DISubprogram(name: "nextafter", scope: !31, file: !31, line: 1098, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !295, file: !41, line: 1172)
!295 = !DISubprogram(name: "nextafterf", scope: !31, file: !31, line: 1099, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !297, file: !41, line: 1173)
!297 = !DISubprogram(name: "nextafterl", scope: !31, file: !31, line: 1100, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !299, file: !41, line: 1175)
!299 = !DISubprogram(name: "nexttoward", scope: !31, file: !31, line: 1103, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!40, !40, !108}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !303, file: !41, line: 1176)
!303 = !DISubprogram(name: "nexttowardf", scope: !31, file: !31, line: 1104, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!13, !13, !108}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !307, file: !41, line: 1177)
!307 = !DISubprogram(name: "nexttowardl", scope: !31, file: !31, line: 1105, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !309, file: !41, line: 1179)
!309 = !DISubprogram(name: "remainder", scope: !31, file: !31, line: 1053, type: !48, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !311, file: !41, line: 1180)
!311 = !DISubprogram(name: "remainderf", scope: !31, file: !31, line: 1054, type: !131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !313, file: !41, line: 1181)
!313 = !DISubprogram(name: "remainderl", scope: !31, file: !31, line: 1055, type: !135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !315, file: !41, line: 1183)
!315 = !DISubprogram(name: "remquo", scope: !31, file: !31, line: 1058, type: !316, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DISubroutineType(types: !317)
!317 = !{!40, !40, !40, !68}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !319, file: !41, line: 1184)
!319 = !DISubprogram(name: "remquof", scope: !31, file: !31, line: 1059, type: !320, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{!13, !13, !13, !68}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !323, file: !41, line: 1185)
!323 = !DISubprogram(name: "remquol", scope: !31, file: !31, line: 1060, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!108, !108, !108, !68}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !327, file: !41, line: 1187)
!327 = !DISubprogram(name: "rint", scope: !31, file: !31, line: 937, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !329, file: !41, line: 1188)
!329 = !DISubprogram(name: "rintf", scope: !31, file: !31, line: 938, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !331, file: !41, line: 1189)
!331 = !DISubprogram(name: "rintl", scope: !31, file: !31, line: 939, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !333, file: !41, line: 1191)
!333 = !DISubprogram(name: "round", scope: !31, file: !31, line: 1030, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !335, file: !41, line: 1192)
!335 = !DISubprogram(name: "roundf", scope: !31, file: !31, line: 1031, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !337, file: !41, line: 1193)
!337 = !DISubprogram(name: "roundl", scope: !31, file: !31, line: 1032, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !339, file: !41, line: 1195)
!339 = !DISubprogram(name: "scalbln", scope: !31, file: !31, line: 871, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{!40, !40, !256}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !343, file: !41, line: 1196)
!343 = !DISubprogram(name: "scalblnf", scope: !31, file: !31, line: 872, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{!13, !13, !256}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !347, file: !41, line: 1197)
!347 = !DISubprogram(name: "scalblnl", scope: !31, file: !31, line: 873, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!108, !108, !256}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !351, file: !41, line: 1199)
!351 = !DISubprogram(name: "scalbn", scope: !31, file: !31, line: 867, type: !71, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !353, file: !41, line: 1200)
!353 = !DISubprogram(name: "scalbnf", scope: !31, file: !31, line: 868, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DISubroutineType(types: !355)
!355 = !{!13, !13, !34}
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !357, file: !41, line: 1201)
!357 = !DISubprogram(name: "scalbnl", scope: !31, file: !31, line: 869, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!108, !108, !34}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !361, file: !41, line: 1203)
!361 = !DISubprogram(name: "tgamma", scope: !31, file: !31, line: 918, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !363, file: !41, line: 1204)
!363 = !DISubprogram(name: "tgammaf", scope: !31, file: !31, line: 919, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !365, file: !41, line: 1205)
!365 = !DISubprogram(name: "tgammal", scope: !31, file: !31, line: 920, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !367, file: !41, line: 1207)
!367 = !DISubprogram(name: "trunc", scope: !31, file: !31, line: 1044, type: !38, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !369, file: !41, line: 1208)
!369 = !DISubprogram(name: "truncf", scope: !31, file: !31, line: 1045, type: !102, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !29, entity: !371, file: !41, line: 1209)
!371 = !DISubprogram(name: "truncl", scope: !31, file: !31, line: 1046, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !373, file: !377, line: 38)
!373 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !29, file: !35, line: 84, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !376}
!376 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!377 = !DIFile(filename: "D:/Xilinx/Vitis_HLS/2022.1/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cmath.h", directory: "D:\5C1111HLS\5CLabC\5CDFT")
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !379, file: !377, line: 54)
!379 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !29, file: !41, line: 380, type: !380, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DISubroutineType(types: !381)
!381 = !{!108, !108, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!383 = !DILocation(line: 16, column: 9, scope: !6)
