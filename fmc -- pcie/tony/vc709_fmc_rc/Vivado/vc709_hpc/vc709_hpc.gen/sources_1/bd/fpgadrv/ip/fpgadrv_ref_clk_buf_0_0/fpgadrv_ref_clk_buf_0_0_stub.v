// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Dec  3 23:55:43 2023
// Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Tony/Downloads/PCIe/12022023/tony/vc709_fmc_rc/Vivado/vc709_hpc/vc709_hpc.gen/sources_1/bd/fpgadrv/ip/fpgadrv_ref_clk_buf_0_0/fpgadrv_ref_clk_buf_0_0_stub.v
// Design      : fpgadrv_ref_clk_buf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2022.1" *)
module fpgadrv_ref_clk_buf_0_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT, IBUF_DS_ODIV2)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0],IBUF_DS_ODIV2[0:0]" */;
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
endmodule
