// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep 19 23:39:23 2019
// Host        : RichardWu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {D:/WorkingStation/Vivado/cse362/Lab 0/Lab
//               0.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v}
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module blk_mem_gen_0(clka, ena, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[18:0],dina[8:0],clkb,addrb[18:0],doutb[8:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [18:0]addra;
  input [8:0]dina;
  input clkb;
  input [18:0]addrb;
  output [8:0]doutb;
endmodule