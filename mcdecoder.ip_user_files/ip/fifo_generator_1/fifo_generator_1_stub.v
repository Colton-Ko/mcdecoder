// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Sat Nov 20 09:32:16 2021
// Host        : K126LTX running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ko/Desktop/elec3342/mcdecoder/mcdecoder.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_stub.v
// Design      : fifo_generator_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1.1" *)
module fifo_generator_1(clk, srst, din, wr_en, rd_en, dout, full, empty, 
  almost_empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[15:0],wr_en,rd_en,dout[15:0],full,empty,almost_empty" */;
  input clk;
  input srst;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output empty;
  output almost_empty;
endmodule
