// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Sat Nov  6 11:49:14 2021
// Host        : K126LTX running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ko/Desktop/elec3342/mcdecoder/mcdecoder.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AkuQNVPNY9+9shMIkhpLTksKYrmlYMDGELxZLzmEPmLmFFG9PK80BYONcHXcZt8RiZ9O4/CnrQBC
CVpNwGDzEFNEWb1E+sBT/kwiiPAYmNaiRmMA5uIjzREW9RN/QihrFSNbz9zPzQr9UXcnxR3GSqWN
lwBLZZXmEQKLijApRzA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uGvdVCe9dp9nrbuubxG4+gQOK8OqdFhfcZHi5WZh5LUwYFXWH/D9RZ2OIoa/GNhkIOKyLOd09nUA
CjPJL1Nnl1l77ChKwzIi3B+v7DkXtXmf86gR6YYyR7az2jc4B3YMVYPNvhfV0zLRWZe9c5Chjj0W
wVmfrgc9GFBoKXG9SyXTNJy2RU68/gTNie3vug3tpc22+aT8NrQpWHH8WA9zIHKTZmW18Ul5Mpks
SeoknAEaZSK7eRFnpVgIYTvtL4CnspbFX8GGCj099WRZFkdAp0NrxlMJ5Gf0w4p+2RGGX7vdNCcU
zcV5qRtwLGYeKoO2fDGSiXlO1R2b6xeGr3vj4w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tpswLO8DyUkGLxrQBs3HsoCtlUARDpnz+ZPysfe04xgDUSvShZeLQRsfide+SSGU0zlcxgqmMx7/
sTH+YWieiyzXUqv56irKwHA0AJ9wS6qNQFoZWsP4prhN937PdsveCnzPbNhOydY+1/g9Acyf1Yfa
yKmBMA36vbj+Kxb4Ipc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AEY57OZMes7pulhuoLcYvSAS+/aEhKjZLskUu4V7Qt6I/eANyPs8vD4J9UVBPuToMfvwCjBI9yUY
mYBT28pBr293y15iVzjM7U+o6HwIGHULsfRqT1KVwFdraGywVWN/3+qZhvBIPDaA+4Px2sjTEgnu
kNzWyI2HIdbACM2ack1JQBmEr4k0KLI9PuV59OSOZwjtC7D6oDBUKg/RvN8FSv8Q9XANV03FQ67X
qP9ahH0HKuC7cr9KZFpqS+R2ULWwnBF/q98CuEAzPbTct7xFb+pvzrA5NND7EqBa0lJwlpDsALOE
w7L/EWa5qbTyryNZGhLM/A3uPeyIlo/pD3dVrg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XNTUosZBY5NKWe2dKcWY9/oG7CSX05DvgGf/33143aPkF7YqCLfxQH12oX+QkD25LDeH4/pCDZoQ
kfG/BpYQsbRjQJ3qwMirs/YOWG18OyvBWmLYyiMSxmrFUISda4GbymyfLybE0CeUYI1POTpUPMhF
kjoBBalr4I61BvCIztfFjQ2Y1F3JePYHe6+7Neb3cMwk+/DX976CxQ20Js9GcWA/2KD2Yz0fn9UH
FTcl8C+Q8IJJTgD3HwEhbAfnKjjY8aqqMa5Iq5bvmjy2WLHDeoSfpQqYT4jrbeAD/ZkqHfGaxvm0
s7c6aaymQIJLM0WiWbuBRf7b38vwav8SWIDaLQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CLboCUCRaPMUWmMgyNL7H93EZP6I4nnXrzkfrbP/rTungNHg9RpJ1qyE5kM+ywUKYufMY0AZtlSW
8HIBWuYCXK0QNt1HNyd/twqV1VT1dmVvjuPgbw6BSNH/iPx2qCO1U33Gieqh2S36LEWMRd3cW0gi
Lq6JrEtuqdIbFHzjU+8hGXefnaat161MGp61BJkNHiMg7yh36dg1AAXEaxT0zHQQtVusUvrrdDUN
zQ9TRiJCOxjx8iSrWizGNZlzBQLbD3l1iX5R9GnLbJC2fvrFLGY3Rywc3VTTTNGKMPSL7wXHnlPm
05R7GJOob3f8EkqncfqDDp8otA4ov4sJ1i2WSQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PbAQGy4IhNDuhR8PCDbgGk3HDa4XnOAIouyGUyEHL8cTh4UJAseSGUwW1sKr7gq3+Gmob6NOpt0u
dTuHVGxvQ4LnINyUUSelFaKv6JB21ows4FQ4TwvsKCpMHRJuZwQf+590t+TstWEIGfdcyOT6+abG
1nllgTprfFdtSsjmJ8rd52PaWNfBrmGaUwPud/ecnyojtfMpKbio6ZuqdO7qe/nf/R5Zvifh/eNg
gFBfKqmAXGeGRD86VfWt7vuPSkzNysLL2YJ3l/fkuItmMhQhOjzHeYWBQSrB914OxjlKplIB4FLq
YepxejZubRUADKaJq10UAQtWULSJAI/qV7w2UQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
PskPdtTd7KI9QcaMe/NiJfTBEYITLKIdUHDNINhTMdlNiMBqltYAbQmcGvos7o3y0BU7X+4d8O8X
ZjTN2mRBqbUQFwd8AHDNIBv2LL3WWX7vYXCYneRyl2MVrHCCTDpMsjx637Pv11Yy4WKDrpJMHY5I
4fbL+sJbViJY5oYxwNc9bMyoTs/AVNB65Mmm2efzBHaLoQXLYh8tpPmRkYvch2zIOhwXH7QyoAHJ
2PKRhlCz7e39svplWvfFzQubaNEmrMbIp9p3YyBL/1Tyzj6H6PlemVM9+j8vWKDqFOOWHtobQfWX
q8ijm2GV9t7lKgxbo6NNAylMBtyzYF6MjfTwBPDQ7gOx6BqHmPf6V0zvB4Y4F7MVgt4SSmZHZD9t
jTshmVJ+V9o47R7NlH7lJ5dHRf5u3p/S5KjbYrhf6UYCyNJ0tn6RMTVGec+j/GCyMI53SkT4NLFa
fQXfm1FBcXL6SJ0umRSTmMx09BDtyfW0SgUZBuqXbkCutrwrTh2MEtkk

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DEeTNgyxYOF3lbvn0F9RsjOAmrZ+YNXOCSQTbK3G4fn9fY5wWq3QlHc08tvj9DscqvTuKY5tcuO2
/I+uczqNJ8bPDC0KfoGBaSKWO0YqsRZiuMCJMxehhSMs2fJrQNjUOffpMOYFN3Wwq2rQwoJ0/5sv
ch2vmDdsOqby6rxFXn64ox5KKGYhpF5a32zr/6QaVQrfr2CvXJcMsGFfFx9VatfHkYVFaD0Ib5Je
4GFAm6Qp7TqL100np135fnbUiSeCk1VkUkpzQpWSi55E1ppywrsaW+LxRSbX1u5BVmnSkKfbNnVJ
jtTWZvAHLkNPaa/K2U/zUji8wkMZ0XAGkjWuWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 108992)
`pragma protect data_block
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
uaTwD6W2roY=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
