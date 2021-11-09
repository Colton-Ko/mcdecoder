// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Sat Nov  6 11:49:13 2021
// Host        : K126LTX running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 109408)
`pragma protect data_block
e4CXicCQ0B/mgwMJmWAaXCupkPkNt04hXlx0dSBdy+bx91+JxEyrqf/ERjJDbfS2w8nd/JohAITT
0dPRZAh1/Elv1o3t+VHXgosbqoJuw232+PhUJzMvuXn9RXy8HJ+l7b3Cfc9LljJSsoMhhQ9MzJ8I
NDkkio6Sd/Kvn7KqFP5q5YWbd/30Z9M7dOZwiDq4/ittv4tcrHo/KlMbJ18wg2p4you7dSl9Eoo0
Y52/SZb/dun953gNgzgdy9Z90dnC7ZfyloJLNACL+u7pgKpwFfn7MPBzkoXj/0Jqj5g21p2cUBLe
gOI3VXI6xGVZ4DB0SltGwBPCOWHX6BqzEW430hN+gPCqVJxFiYjmw7OxOsLVtFgaNbO3Im9vEYIe
hJhpKJ8wVHcetIBSBFVA+xzVTBlVkoBhDp50OATpRll+eOCbt7LuvQ2D4EjOngo1zsPQCV4PeA8q
DaM1Uj5H9w1iz/fFROELfJQRiC0b2rIj+GuAW3bByqkLMb18xS7C3+FlbHP4wHuwz0CGMLA/tKOS
4yZXIj5E7TymXqIFjy/7t5GeCrQDkGRIy0Sv3eBC2z0gtA2XckT0rOkq/gmSnCV63wrDC3+ljmw3
vuExntkRmUcVS95517i+0lD4+0qQKXhEVoEo89e4odK7mbgHC7YwL1JUVUtA64nrY1rxiQfSgbFL
l7NenCMqVhvbXrCSkOvicZitnPQqwjiGBvKsf+8Bek7hxrt6YmFYMmINywRs1g3545T2/N2LHGhQ
Oe2TniMXftFj9/qNH/fufFHg5vgwtU7vkazOtWqLhlfZHVjz3wNJdIYVvFTsWVJsoKHRaH2ScRyU
L5AyUJXi8DGrJM/W0+zzjvTh3pBkKUdhJj8+j7W3/+K686r+v3MZGT8xNGOtvIgtPRR1+XS2JIos
3IWZDZ5VR27r4gGboQQWTd6DGppyAcivn1VBBj+xH0M+EPmZiYWxaLTdlCU9JJE2ZC1hgZIerlH9
/DbznoygMpyjj6cQwVurnikXUq8MusR5071vjnFqMAirVu0EM01WOsJHnwYsYkoqbgxuGpmAml72
AsrX4ajp9mZ50TUia1BWJ/rSkJBKJTUByvaOSsmRP3+M9pdO9zEL1SaPeKwnsrgZgJAMDAYtJNNg
VTGhcBgb6v2UsUj8zVvNlzhAte/Fnkq9FveKtyhenzFfWZg+eE5JsJF8fOeDKCqC86zJRtSoqK8W
2StqnUKC+Lk7hcEvbsoH14xxrAJ8da43Rw4wMJ/G3q2NC9j81Gw+eK8220GWNs8bwJOzvcrMJvMz
XMFqhJHMGCrKsnLxdIVzx05cH4AbAG+ETVonfqKmsUQ6RehO1kNhmDHRPJ2NZTNF6TLFOI/ry6zX
KWjrl7qo4s8+61GVp0F8EqQj5Hz0yh46QORDwRv7o+HiMAWeDxJKJlS4LlDPOvpENOB2dxjpkp4B
fNOFHBR8oy8Eep6Yuv2hH30/kFIRQS5gy43QXVtwccXp5A22hJjV9VRqCrFPND/GbtODoZEF/EAd
pWeybotlKyidwkCWs5lldZEnjwvCELhDU/BLH5NBJboW5H/PdT12gOxq3oHLARccNoD638NZ3E7L
CX44g5K86tUb2HK7X7xKZ9o8RCzT7zoQAVnNOPIZMV6TYT5WQv5JePsVlPZUMMqRBSqTdJiU6lzY
3dsGieZpirh1ygmZ3DJi+x1kauqnD/rapnggXHcd2eq+97jjMBQ2fLGka5RuqUTBPwbNaqA4ZYK8
Pv/29We6j5nyhV8ZP+2toeV+NgKIel1+eC/FVtlRVwFcun72ajJDiiimRv0sa+G75ouiDwxGH44z
/QY9R8PQPDRRtF6aj2P7LW4wXgj4a8BUjot3zwzFwOzoTleYCkdMZ/4+Gjqjt5QS1cX/St+iWQik
fXLoUmcHfPL5O5NlmheAJKDg9ybJ6390K+M3B3Rvx2MSEEjaILzLOhyDdIMXop3jRX/sLA85l2zC
/1WylS6bfivWP4ZG19Mb/XYr8FBCX29I1TMEZEaA5f2F/1qaJafNyY08Lp+5tMKszroJIzB27Fxn
16JzDiGg5XVuO4HKxykBWQqbFaKalPnf2OI+nHZIk8GW3Iz1wRYjmNnMMpQBK42/cYulXPptBjf8
pp95hQ9aBUkG12JiuYnVJWB/XnCTTyzndOqV7aQ0uncZyEj0xxvu1cd8/x5AkChxy3n5V5Xi6zYP
1TneJQGIQ2P44PzaoNO0StHJ870dp3rwZDiiO7Hjrlizlv8O+WRNa1xYnh2E9EQhdWJ+xlPjVtpX
rsYeJG4rawEc0K/+IucxafLX5A26Sl+hueEzD/BAysXV10l4UQOi6jHumgC+rkGPm5iO8pI6uyIz
ip3pR5Ess9At4vuqt2mW0OYcvRuX8XFGMJZcZHjr9MDSJ5kxeDmo+vMEJy2D1X788SryFvfgFm3u
D8fcDWbmsZ8CLAT3X32JVZHpYePdvN5cDYipr9PRERdSJ3CRqvy7RouPi59eGuYBM2bMlhWPMXFY
woC8E/15vHGxT/NzhX4XFxWU+woT+VD9S1yQnYfByAuwSoMIUr0n62O6g5vbRhkmX4rrlDRdsR7Q
YscloWSyUOuChT18Kg6nlzS1P6R4atcxZzKZp81pFCSEE8aB4HGa8Knksk1FiBocIvHr344xXS+B
G8kGK3lSwmPEk1Ofv3OXFXLiNqAxLOM9OTTdg8ocbxAp1Qr7LVhz8HT3xH3+A1aUDRoJAYRRw5mH
JaMPlkTW7JscIn87QQxeUdH/kkqF4Nr7AIWntwA3gFTUP4vc5wFPW8Qz07+tlUqdNHtDojcMpBCL
m9rts8ojj3oNHu4FjRvVXtsv+zLT/3FxwNPe78+LFrw/Jbd6VtP2/mTOM2KcbGoLD3zhfwdbh/00
o4WtcLAzbThV/PC/vxPcu15DMGTp84QfybTNNfB6DtmjoADUgSJLcur+F163e9xZOQZt4YmwtR0T
kTbpoN7aV0enu4Ldns8YQeGDzCmZcJhMsFkOpyBRrydXsh8njlZ5Ypdc/WkWEBkD+yUi9xsZMKUY
T8gbVrHErFT9apNYPdbPjIbLUmKL5E5kWsNX7DfSkQUtzMiK0GMlBAU8YPq6Ibc8Ac0aDF/yaxKp
SG/La8oKXVb4TT6IM2mFoUcDWQ1FPKwvhJSM5RchJD2fPKx7C8f7H68RwBj0yaEwyoZ3ZTEi5INk
oMgip71v5eK3WQ90t0TlPkZ06t0ODrPG1fdwMZCaiDM/VyaMJEoQYAItPEro5Fq4IZA84XPGTMuB
Ku4eMHZQHBGoK/0WR8GLZ9XftOKXcdjh1sfs+AFdQ1yEFFxgqUhoWTcYZONkD+GWeS9XqAEwh4tc
ie0S8euNGSN1W17amZwR6BMj+gZvXhPMlCb0pCujgWgli28u1UvdHVwINAdW9+pMAUkWEAHOtUs1
NBE38k5bkrJj3eJf5c9n71iYZiC04ZZVMtT/ZwDwEGtZUgm+fAbS2aHwUB1g4RQvCiaBnf+MQ3hF
+WTHlj/owZI1RZTCTuPntP5ZklraBrXln9BArTBWoI9PbBiUtAkEa99kRgZjeyvB8sGI6Y3sv5sv
r1T6uFovbdEFzVL+pVUYcx615enefKTYtTgcURHqjSyyuytaaaNAfyLjMVpCqUzzZPincvnc1Ybz
jwXvq5BZpuI17rneydje4k+sEaPLJ9iNVsaAKpvf2QmXE8vk4d/Efea4ZwR3OOtbjKjUcZ549/+u
aDF17C8sI/wudRparTx+Qe+yN2qQY9rsTb7+7vxM1f6fGxnYk2Vf6GRhwEtqSgewBoRv7fFdrs2Z
bx4sn9BXn2hXNuuHyUgpTNX1S0QpeWht/I+RDbo+9x2d96nD7Mi+LHov5bPw2hieYsLgE657qvgA
EKcH4QWC0q0Cg+prJEFCOcJ/2dDGuBfXoncmxQAG8fygK0Dtw8zV3cs9GCztD0ksa2k4+lOP3vmj
g1BXooTX/GAayeJ5o6CSP82TsndhCTw7aB4fEXwp4/pjRwfrVcVShdES3EvFlN0JKD4MgYh8gK7V
26W+6ttPXcAPYgrL44gQG5l2di6DaoOcZQK2rdgupy0tAo6HiB4C888YfmxeDvc/AA00BT8yjngl
CZx9+BxVgDBewrVfyoso9YviDxpsi6k0/U33sozuEKrJX9+NIbURdNBIl5FkJhH24JTNiUF5e94y
Of7m9aq8kSLHVslxwKTcnvOl2bX498Tnby1onVLJ41qnvaOno1TRNvdm3nJDw5FzncHhO8WJbh4+
IU3egs0NFY4ae1Nkld2zhhaU5Ve1LcEJKuWXZ/GA5cyigb5bk2ac36Rn39i56jtdlZ0JvhmR9dKp
7MCyCG0t/BIbNsB7jXzGrmw0t4hucorcb37orUFiQL8yigC4eAKyYCnZ9p24t9GhbpDe37DIFmI9
iqX22PK1jfim02G6zEbP3W16hkqvgjge4qK1K7Xziepmn2MIt94cH+rz1QWFRmhQA151abFHOK6o
MP1xk0yPSwdeUZHW88tX37XORRJCfUAQvk0ij92MbOTeeVqwdvXcHvA9JRpoXq9NmDtIiZpbDbq7
qUC0Xwk5+ZJpWqyZ1Fnuezu28bLmdIsbUNvpzPErIvvpZPAhHtEhUHiZ63xp+JeXyYfAFtxmzjsJ
n4P0hI8uwaECzkvSW0spkBS1eEX84m9s6QWPcCfrVmDHIGQ4dJb4Cu9CqoW9RhykN5M/NC/HAq6b
AaxjWadaqJyLeHw1UkZt97lsMxyAfiedbGAoASMzpX1q9lVoP6rlZFh8dlsKb3/oAKIjO3GvTguX
liEoRLQaJLDN8b0D3Cz/52pNHasyI8MYmOflu+ZaqWtdeEG3dWX6G3++tHNGLh32PghNQU1pSt16
T7RY9CTV7CTRcduLGpjC5BJVqsNrc815q8CUM67qVVHVrP5ttGGtucppbsrSIob64hkHrvEFD5q1
Ohazyo8a6udN6BkZLcdNIUdloOqFyKDC7JDnZhQVs2wtf2SHOAT8NycyZH6FkDfV64rWYHDlu++e
1d0yRdratkuMduZRhxB3/HQQNuUA0Djk1U9IE3LlO/vSJ4KyvHxd6g5e+NhPHnlmJxwaZvEyW82z
Dve7VGNKuwBJugPh568v9ATUyP+8kXPbJa4j3JWfTMosYpUtxXnlWpSXYn1b/kqB+EQ0iSTZAUba
bPuWJOF+mt6Gf7uKOaryffLJuayxo8R4YrBcilwhiloxAv017C1VDnPbXjUDoE3oy3UAD1ef6FvM
uHKeb8KJaJkXFrL56Ybyg7pNhTpZxmrdtQe3IPdJdfStTdFymd8brXXMFdp8HWefgr4X+IUEAWzC
5OG1Jpf+WW0V0NbTzbZJrb79xFUtYb6FDiM0hUZj8FcdsSKD3zsIw1GQWQHj4NeZNtQcPZoIiQ5e
R8dNgpZsizo7RGKDhazwqNIqixA26DSNwsF2fnMHyIONkoX+TpkJbooGWAAzkIAZXCuRd58xY2Rn
Hjx3lLt7Vs2OK8vYnmYxfg0fm18Nq0RHImlw9jckfxGVvyzw0UOzYf1CXWtaCYRgDD7m7RAGg6iQ
Ax6FQvmG9bcuRUZd3ldaBYj37gXF2YPQkGvAj7QIBYoNJUH19qAmtwO18HQMomiefumm1EMSqinq
OxDjF+3RJ1Seb6yYqIZ8SVN8NU0yyDI8CryUCUBP++UNnV8saZ9dFtPp++7mJ1XTOKTpgwTLSGv6
Fh96kKcXDXM1fXOzHzRQGciJ7wuHmOG+vOw2IEwiFgv8k2wphsld215DfAWYOG4mcY5OjyFEJPqq
mLXxAJMgWxej4HqLxDJ2YS74L+arrZbYinE0Q9xWCOPs3SKZjdUbXM5IOYH219tOk1FeJgBH7cme
wVP+DjpO/zJaFnpXTS3TdmnvudQAGrIY1ZgfiDWkVpbjES68ZjTGE9PYg1T12bjsBcV+PQ9x0O4E
9KaoJGPKP2XNiGjqOZY9EZ0U3FyKIHCIB6R9KmC/jHKtNtfyEmblexrgHwwVoxHkDkjeXs1BZR95
uLVtOQKAkiHSARoexMqXN53fdMAxTOg+KTtJ3hDb8iIw9UqtGocB1idVkg2re2ascSq+2crztga8
enx/St2I3kMftQLabLBz2wrzHizo0SqQCiWA7tDDkYpHQ427nzHU0V9iohREfZwwfLJNil5t3/JH
578tfkSOZC7cJr0YMxv52JMfw2zCB/sSHD8igPLxMwFIQNtRtgoxQwBkuvA/yjdm7GdlTSITdjZ3
yTwothYTPsMpEssVfuBCp31FQr4WqXlipAUtxDtqxoPkkZZXipwKyiOPInoqvhcSEtvTLda6I2C5
jflMy2reK7jwZXT0HSaUNUvaXJ4p3XZxwKzIaeSxg9iuK1mr5Xq9X9e269A/NotEJof/3TA7KEEC
Q4wVv41w5UnEHSucRj8Uh2I02JNAdx2CVmYgRW1PhjazdaaMKvIEohm7mB4tT9Ezo4NJchqf8BbH
n59JLhNl4WCfwP1KM4sssaRsAgZYHjvD7jfoMOo+WPBvQSHoH8T1itRGuUfSCNwrZ/60akBN8CBp
rZZ44d2xVuYjhLO3Jdlm9odRi6NNYqEHOnCt3saaUh9lidsFNaBRQiiurnwRxT34QSYlrRfPfXz7
KcNYzD8DvpQkktBJBHrq5lyxe+n0c/BA5D/a636xeN5TZ1SeiSYTFclNqjW8cMKh6Bg/H/xC3dUA
jhaOWzED0iynHktlPUsJMNcPaVAYgv/l3zg4C05YVE/eWBB0DqSXhKUjMvzKt3jCojyW2w3akrUw
e2dMX1gPimoJQrSmQPR5Lzw2JlV4WAjFTtKArfPAd6kmFEZDTpxUFcalkUXrCfUaeem5/0ltcFbf
L+6VI8yLEb8usMW+E7di6xblGcNPorV473r0RBeGAlhqVWGVJIoDgF8QtdHLaA0Hs7HCE1TyNb7F
mEmLFSmm3fVHsH+kNIWuT4nw2j1wd7rTlLA0zm8gTKNeOMJqgpHrIgA5E0KfxDEpNz3JY4cw+f+f
wmFocem0gwAoZgbQVT/xmOQTTTIg8370GKkZk8uX5NDdDuuZl1sh2kCQ5W/Mc+J2zYq0jcoDldsb
xZ4EFn1rtVvLotmCXO0aTabUcwarpKWz2rrbQhb/rNBl9YVKeKrFEAUDWLQvRYE2liwrv6suJcyX
XOznb27EQkYs9bVbhmdK1svgxXhfXtOOU9hYSNSm/yJq7Zjr+63UOFSHARqTWXxlrdq4cSbSMF55
7dmTwsbenAxmdFTWLCzvrzo8U9oyuAV4V6LqGuXODpSjfV8qznTAN8Il2By8GXRgmmniGfXz5+c7
X+jrwfBC6wAeLknro8qk0MWCQbcwf9SNm6E/9cMl040CHxmYmVEQ3uk6QoU6G4FIKjIfcWkQf7Fu
P1uVw2VF2cTu3hL7EhY6sLCKytlPdHEBN/eCpJ6gfDhqbFkZ0a7QTynldA0AqMEVv0jeeOyL1wMO
z9LMfD/gaTVxepC8x0QFZcCYtfPPDB/hXFGwtLgQ6oVOPUahT6TeR6kwrnwdTvmDBQmvktaLkdMV
X7wdKmz6Tev01L2EsRfjlzWQij+Q2nFV7wK53Pu8kazjj44YCJn4liJ+Gi1p8YPJPa4EaVBGzIQq
k+8RO6OeTDMy8zgZZ0jl0TMxRr6GLiEfZF1KdPnoL5xetuXt6591Eagh0gS+tMaKYpJU47spbxPk
U8oPXLJmGCpHsXROC2A+CTi090L8nkpy6X7X1Zz9AhouNE5s4dr2C77xT4IVrVr/UY/5RgRHjAVW
k5ZQ9ZvlI4ubZpWHrd8CGIvqsZwxtBtSU775XWdITGZUr3m9SaHympGOox5ojZXqFHPsvL8WMLkn
nqAjKo9Zig4b+j5qIs+X40h4A3HacQFw7esmBJEtEVlQsh0E7QmmyhyeVdRLpD0ObC0QwGcXIz8E
bOkdPKDhHeLK2dLXNvICaBKHYnYfPVbkkQY7Y3JGUv1ChXOAw1t3vaSfRixkZnONErqWNjXDbnRk
cAEBbw27Zx/qoolUC4Muzcj4pev4wyBXY7ceInHKS+gHSdQ6G2GpASKNVRqFR5hQs5kFVXR0ptAI
So6bk3cWfEVelrSgWl37jjBd23MihNIm6AVCoCAM66kY5ATAXVFBFXrsD/P6KUlWHvmLD95ju6fe
056jv+B2At0OtuDKFh105dPSjwtY7BMLBqiYleNdVK7vOPh2/DGs2lUiO64UwyKv1Gup0xq4/Ifp
wis3nXir+KcU/J+OEpwmjZEmVWQcNLgeEhDip500w2lJELBitK460th14Dp/ksuSbEnVUWRHfKrt
pmJPtzHBCwefAaPZBGd1KwqBwjadse9DiR3Ryvz+zFQfZGMCXHMW4aUmQB12pAdlnX4FPtWSYOF8
ue1yPlHuqT/LtOiznozUHu3c8rhDa/9SP1MqeJ1zitedLSoyPa0pkswQdbwBdxnGr1m1L0eVSQJK
XyoOEcPgdhmYPKSKvQdkbyHXlKOTy5iKXj0Pi44/t+koEncU7H3NDajnS6wf+7re4lzd4M/72z2J
1nc79iMC2+rUsm0/a5V5YyJUiS5yFlrcAygo1SToLxTRoNMIkm1FeKX/wvC+LSqPDc0UAssKTaHv
DV2UWcJQ4x80vFhBooLnChrQZuhee1KecSydvd1cTXROXOq1SXINzdH94hAxMjwCAD+0G/LnJKED
hnqmZyRUwX9V+BKKBR08azMe6G/U9XxvcK/GjRAXwQu137098OjP9xMuD0Hv36FBkKR7TOSN6Th2
BsbYtY2gLDG4i7oEK3pcrRzSCvzcaRGHI1KxN2shKcxYlj8U+dj7n73hKKweJ0xE6i4xL/CgPYIz
F5TzYqXepgTCgQu9eVRCB4bkrWe2VT/slHu1s/x7yJ0/aLEovPa2GkmvMb1YI0exEku3bqanSOFR
UNtnZ5793PTPqk7cK76ZkP+W2huajA4mzED4bE6uYy/k1pvMmZPKIp9BDduRrjMgz95FMYwXgcm1
aetIrTDonptIjVyJBvVV3616RQ6Ut/XtCKKSc+GfP0Xv6VxdarWUXmykLkiVb3jpPJxrqIPmKlyo
haVz8o2QKUrP5ofFiz+6dNCISDXJfGRvJQZE69rNDJUbRLOyXmbWUmkkw952C5MGxGOR1KQu4eYT
fj+nx7z5Z1aR9Y5OOvJ+h8ZsqavMDVWOAiBuJ/fyFS4XoShUTW8VM2OdS1D7HK2rFkZwqnAGXAcX
bUy7W6XecL4TXcRjVuytZROU4G/WhV1QvK0gxvOeKa4hqh8VURG4ygQqvvG6Ed7uYMF5Z1Kr65e4
SOGcORv+HrC+grdmFlnf4Xs1GZ62NVdT7B9GGKlBE9J2lnQvUTnm9tMAUzDp/eTnxQBVQG6GH8Nc
aLHFslyLHbKBMWkf+ykJXzH66sn4ZJLhP7mkT+vXSk6myLC+g6fFptzc56e1e6213aZc6dSKO8B7
aYic0inPskzAi05REvoG+qNf+kgiYh+SJlO6JN0W4X1hGn+GArehjU6jDU8DppR3+VWM3CgMdzP4
u+2/5yH0lecg8BX7rIf0P0jFKgq/yUKZGlZGaynZ9Ve887wq+21xOCUel4eGj3mL2zeC4PIvVxAy
7iWFziAJNYW9/Q1foIJX9pj1I5mVkgC40LdBRmPTnamHZ9PQGn15horUwIiShBFNPTrxqgfQbU5C
MK6ZAqDF8hcKNHXmCNfeHvbJkU87JoJcdeWJdIFQny4sih3vaJWIMsWfubRqDY6NvvsOsvlNedt6
nUPez68hWxMPUd9TumFSYzOKyTsLhWTiBX85gaPYnElYkwPSdaS5RrRAW6nNygn6JVqrgtJPL3hE
oKZdov6MLFKVnJ6m4t27+szVC9bn+aT6RA9fJqrJesNPy7TKI+hSLPOuFTkX+8KRGozNi8ydNck6
O3wy9wJDxDGorN0h6VP1ngUKiqXxs5fS96x/uLXExWPoYuVu0CEOAzrF+W4CDaD7o4rzIMderD1q
eeyOjeMz9W/R9Jx3AxZIwIEVCcRPZOCnVmdScIBOkVSzdQjWXU4+WorhAWHaulCw5sGmGZOA2OQ5
I3ZZQm72O0kqGGk/jIBYfBCqwxOrjzurMv3Y2CGMVUhO8MsvlwacUos8kvyuUqZONAwc97l/zHw4
ruh/R4eSWdCZED8Y9BGIOTwBz6Y8SJIHINzUWKKGJZhuIMMCh7CixdrbWlSk8R63Q96Q6aizw4nu
Ixavx1y7MTTiwZ7Js8Gg6XnM6oheWkg+8zN/5+X/48NV/yHdMTGggZBHJdZo9tIt9FdZZQSs4aoS
e6IKngTqLO4p5Vv2l3n8rc+ja2Fk3pP0R9zyERoF8r62MxmZf2hJPh1oC2cfxalZNgZzBy/0nXYz
TtQxHQZUO6UkAT2TTd5baDfMafJ4kjglcv/KRPRqj6fMjdYyQ2m8eO8+NZDu2nvtWhAE+YZ+lkyh
AqSRGzrqvfDdKouicl1v5l2dvFSWLGrIAxqqHxMYSAUdVz+10B+QdDd3Xw5+ldJPDmCmtqxe9ar9
VFsqOD74SvxhLa40LwNpfA+KX8cl8Powk9OH09qSA7YqcoHrF+6oDDp1xPNU0qT5nbg6vtagByDt
tA2lyjhMHNcrZxheWSlgSpIjYyXcJpqIjNl/OqQ6FrVl/2Ziw7I8nubTfmtu6HaD72Dk1ngJYYHa
ynlhxMpqRWLQEm2cJ658SPoMsdDpcz1xtMbsKNyyVEsXJ63/2h7MEcj2sWpNHTll0iJtfWk2+OzV
OMVAMvvwF18c4fyJjZ2TjUK6D6KmLOB29fJw7G4hy4nKbhYk8lKaV4/ElzXHtsMQ8SQbM8PTCduQ
COELdiz0e/Akphfyr4e8aGG/bFDQrBYwN+6fsQW7GeXkyDFYVYuUhkeghlyjoJXqSM4Ah9/MMHYp
w/KOlWyExTCUrm/JVdzzvMPk/nAaeJFNHcktFe7YsMzwlOrA4Jo1C5ncl4TnZBdsMvmlYKWLARVq
amTbF0AehcHVX9f1DX6pa+NC8sbzd9uaXNlA65SOqWeu8uTJAZxMOCUgj/PI2XLCu75u2+djVmfi
IFPeHV1/WpXhjmgvCf56OjCh5PcNF+Gk26uCJcrudmlbZlMTKqz5RygYyXG68fQMUtPL6JRvYMsk
R8vYT2X89u8osUr8CVwvlTE3vXhzsPdnqGnq9t6Yse3y4bp6nlZJRNZtwd89O3p3oPyxPDttTceo
f0wiA/j4qJcgjQFPoWu8M9rWdieLHcZ3gr7q27cY/PUdqJEVmzl8mm7gFOBGTs/tec7Q+eVqf5ZJ
+LsyWLR4RRYlqYNSQrVD06cRoUDeuEI+fjJ2cAZK8YOCiacc6nFS/l5u2au4DcSxMAsoW6Ta1ppV
zk7FNbVE0qIUt1IKaX8AzHNvExFE5q265jqxaBXPUpk+07bxUuwJAbMG6sCMNLlWeOyGxe++2Ccj
ToZackwFKOzX2grBscFkTqeP7mZQ6bRgmExZPcwNkWKImgYwau68aH1a2eeKeQQmVcObiqI0erlq
pfmWjVyze2LvoNjfYRu5g01yYtkHNabsW42J2KobV2gHucI2akEDOwUzj/f1TRiySmGh7RWPD7Jv
UhmuQk/LJ7XD96k2Y6WbFKIh4UoUjIdz/O5ypwB2uEK+tnbGExUxB+VR0A5TAqR4slBeWiBmFV7X
tw/vjnFIA4oP0euVA6WZ9BvbgTrp9EGjgrAZ4L48A7rzlbOmMS8n39CN2otiO5svHf1hRy2ld2Sk
BrNXBojBtdnY9aZkzmbxznVqLMVV7V+Vo+L1UY9QirhjXnCFuEl8RBUjbPjcWtO13/j6EKu/PFYt
tdpFNJC2vnecN1RbsodfbYr6kNMyndg9zRieqSD5VaZal6TNI3wBo7hB78u14ne91G1T21/qKfe+
11AHmq4O99MEte5Zdtam8CCi5q/sDgs9NTivUG5z2tVWcZo+2j9I5nIaK+UZCKaJB6yfktbTsCCW
Q4Us3AvT6BBbK/0U1AoHt5MUvFRQbtzrsG0N/a3gIyPAtvdLRovInhRE/ckdeg4pcqo8okV6bbR1
moQnt9x/a4uo+wGW2k0lcOCm6g2mFMvSynjTW3DIwN6+KM7P+oMXgHfUhICPjCpM6a5V/6p6FS5X
ZhUq7gTaoNKSyfb0OoK0c6jmMN+t7TxyFTPglqb3jjX5I+3n9fwP2G5Ayq+YYpkVTG+IP+DReITd
z/UNqvM2N+AfybzO215pA4ygab9jUDIj97dXZG+Zdiux+pAO7/5/mXnx84tC8+1fjDvA74RWF4uP
tWbq5tr9ScfLEcQdvheANYxdnhOedZiCQyjEgxPEG6zDvV+9wBAHjnrtLkog5S5gdHg3kdzsG3Kl
QM/CaCTF8+wKIsoNzkrKRJBoQ9Abu9TAuYzXo5ukg1o9cHD+S193XVWfVn44/Xqvv0oSCzYl3Yet
NG2/1HSn7Avg2owX1rnpzESO+UwZ+PxwxO/ehHRNnka5/ZwZyHOlxLo+s/DmAUHmCDcWjfsrBXV1
LeRLbEhKtKrpUVRa/PzEOaMAiL+bz+b9NWpqiF0/jRD82FC2WXoscwgyadnyuPlxo+KQ4vPoZAnU
WrJGkEXzogFG5GxeonZ39RZJLpJUKfdB3zvvNmfLWajRlEG+xGjOnoGM6WReAMpJZ7mD144f3DLj
7cWFhbP2xXlb7y0fqsHTBL1bNmvHWhahx9se39kJN2kszS4Qvtjn0YJqswXSnQo5BzhsVcuYh5mE
aKXA3KDU+ykkUbnvk62pgaM9M3YAMf3+7SpeptXaNWsQT/fDf/4VTLPBN5VrDm6rzeI89YSDT/uJ
l/UJ0IaBeeLNbCM1+EWP8vBxCMzZljei18VmgfmSF/oLuMXY+LxfevnI/FYf2GAQm3kFCJPr/ACV
aL6MfdR/gd2gFUia5Ms9h7yPSSjX8XvrVeZmKQaXN4nohv8TkKOHvHPa80KlUYgMGcbEmsQGKfck
1C4pKOEdTlmDW6Du6S5ExmgmqNPYFn9SbBVrWkZcFmcfXqOaWJgeZI7WN2Cw90qNGNJhfrLv0VEN
HKyhdaCmztZTHBjDnLYTdIzt4aczZW3xRA1Hn6HXC7aaQ1Y48B5f6/WOY8e+CItsSytXOlPK9F54
tDUIMVPIQMARURXocxjrn5tFZU5gd3vDPH65GKD2zOVWRvJlz7SWOaD98YcvWqWg33TmcQX5vE+w
DIdmBD4RqVzTm3+fYD5bbjTMcEAPgsmnFo4v0Et3Q8rB/rwn6OIMXi5aitWAmQJGwhQU2y5GVs6H
y3czpH8DsrnNXuu8KV8HRa/J30JoZ97Oy6IHSV6aL+ohRycv10A8EyfS/wuA9f7U8UCpjK3AiYTm
O4zze8qdXg8myRFUtFI0PqZ+YEPSdPI0Qm96Pq0HMzEOgUz4MUNEANd7XK+erwFiLbccQSQfseXg
RtCJapIiK/FMtlsNFn0zc1t1w1v9x7Hf/ZSiCtVqIIEEmWXHZM8qHtL/5AXHzQfxzA13Lg3KX8NX
rOoJuYC7FkilrTAc2PbirnIUrOL1l1DfDLc2kZuEaeUQyuQQlgtrEw8o4V3z6uY3z7KBingBfUGx
bo86+5Th/WOBwIwON9uNFOumsG+2rJvkbXnTo/yY3/2GGvq0B4jPKC+BO1Qb7YBXErP2jYuWsHgY
z70uL+KS0B1i5VQRhnbf1/4KspMPznVFgu2VfLn0wXoTJ9K/q9fsGCp19U7LWDI00NXv/8qk27Qg
JYLoqCCFicOXO5W+ov5IlQ068VCfF2iPf/OfpFewqAoRYGCtXFzf0rUy6WDYi3PO70eOSZMI9PL4
SlLmvJXYt1Q+FNm8jp+/e0PDDVEgRffx0sPGPqzdmfOR0UsadQ2TKVS3Ax5jL5bjVPshVCTBfd19
4ZFyJ9cu4YBoueDeef/jG5pssyRry62YPAzHYos+ldg+ueHmpNIoCom349QyTpG/mrrFCe3fWzf6
q7H8Lu0O3BBjzirFj5ZI71RV6BYh+htBJ/XOEbVZomxCK2PZW3c+YjWalMM/1zFxblMS19svNxef
+lgWGXcMRqspAIOouRK+b6CKjXMmmIMieAzQ19lb3mROUaWnlzHuCvFEHJ+hyvp3k5jA8prF9y/W
RIJdo03FXjx3k/iKD7Bt3zZbfBeFzOh0QFLd7ne1riL/1jAkGasyZCnL9yxaOh0RoruglT7PV3pc
hmuM2iPTjHmnd9JqiMfkQcAE8xVGR3ik22mQt59FxyoY5A32SFUhtbU0/Xrc+IWOkpAiCZ287yOK
KWmB0M+9MKGI87pcFHphkIf4YYZNMTS4t/QBzyPhD4Wze9NlorMndKzBbyzicuk1d311L869W/1o
tbPFol0RpDUAGj2KMk6a1QamHV80kjo5idEa3epniAAYqYh1FsPfIYsNnG7VJUJAd2jZzf8Pntjr
EuBrg35LcEbJ+hOyvwO/G4zMQ1+b3GaxehdhgYyJKF2XXIVsxtwbFxqA0iNfHS0nh+CILxTENAli
a94j4vpDeEV5YgNFEJtkZAU2SL0FGxnHlSsymE8bWfR/uFHOmOKogVxsPek5Wqv92j1ify4OGv1r
z582AtLqtP7py9r8TXL+Q8VQC20KK1KH7yMTXR2GeRHypq6r3Jzfq0dJyLrzvm2cC66h4eyxgyR1
YBgIlG+P4z3dtXijks5ZtJjoUVwwg4XJIbEi57y8oFm5BaMBu6N+cjcFbKI4E392p6HJO2RQFpEn
8SdK0btGhK+P6utotfiebtz2RaIlVl14xBZowOxe6CMkdtxeRjzf9Qsdk04pGy4m9Q8Og6dvV5zn
rt2a6F0ZoVewda6zYZxr0TFMkatRDc5wT7WqaoRjKOowfkKFP+YR3LEwkNRxvdi+cyJRixILvr1c
Moom0HKAE9c6YdEPdIxRIjQNorHWHcxwVZMZGkg8DW6Jajs4MclbJ18FjLjKl3vGJYlZ7MnZMQwq
l86S5f86a1Uv/Eput5TpLUoHh2htX9RJK+U+qU8dzYjtnDz00Ncq21HqMss0Rt5NV9nqMlfNXlf2
tiy6OiPxyjE0f6BbBcSbS+uT9Y+QoqB4MwsFSuHo+nRE2nNSXgqlgH0v7/cvP2LuwclSFjYKRdPs
D923jZ4+YLVkPGPpXZCbyJD8AqKege9shUiU1O1GfQma2ldUM1lBwzDafRLSRvGcbOMLezGirMcv
K7/Jdy4NOph/3+XN/MJCLx5y4pUIieh1hKIdY4HDHpCnY5YtszEZhhX3T3GCxOy+SHRVh2eUiPok
Ds9Mp9x0RNrwXKjAiaAoPxnFXEqiP86d9N+ce9AsebcAXt5+ay9TT+6wM+jMtGjf0m0DJCrO8kUy
Ye2uPp4NRXKc1X6l+AVN+tzeuXrF8ptgV8rPKcgrXXK8W/Lo/aY/YPOL98QI6nTv1DpRTKlMkMKC
2DovWJzfb6oqfB1z4efSdnlAj3/cLAHgfGwXT7kv8NADeAaKx5pQobhAGkb7eMKhGo5emW6iKE7h
QeTZ8dVeqbnbNFyJ9HbGoySAq7+EAUT0uZt0K5UdioEI0wx9UTzBDtB1p2eTrTEQmbSAvKrcodH9
WQ3ep9iLrS6+pjGg6w1rymtutiSakyHloKiyIio5L2CGtv22dIBUmCIaBPH0evJ9YDFguiNjFG7n
I9sw1BMTgrv04FdcRUro7R4poxhXeC3FTCt9mvKqH14bX8wD49Eaphd9KX1nG8EasF13vcnBpMde
ZuQ+CZ96T9qT2AGWeoqj48q4bMX3hBaHO0LZfdFCQBpGv9xxPQQbiAL7gKQr1vTzpK7NuqD3xihL
ONBjD2k2cF41SBCwDHa9nGk/iqAkgWxCkTiFAqESikbNDhoRmXiipZXxPTj3uQis1OWMAnFtNbvT
EyPDfflnJuh7BKOSw7ckPFh4ZXMyfdPhwY19+NYbPB+KcFqoNpumf5eWn3an2qhoODbCj/K4MVLW
hdxdd5EpyNofu5MVBqeEyh9FqNrgIYHWKUp9+eeUWdZoPQyHcbwUm8VZDghsX4qLUtyVehNLJE9W
xh+pXkcCBN4hGPsjFaUyDTs/ymvI70x6WjTT61nhhQsJwYRBT5uAGF/KS3AX3R+KrY1SoGeOpbZy
5w4Tc85yXXpnFFkpOUEE9RKvy+/cJWZFOlMKvrj6xBV1027cbWWoRwP0RbYSa3gQWSli1MX6jT2G
QuRNg8+hOtLc6nbz6LsSN8lur8Mk34+jbzuChSMdXncVgZKTPbGCQISRAcusqmndKt95B2c6kjNc
nYyLnAAAqjmgHzbreUHDiSQ7Es1R97IYJPQUL9UftN5ztexQC2RUaSpKZY+5ly1H0w6LODBGyUSL
R76QMGpFEf/Vap2GIQ9YFT4BL6hg6qyjS87JR+2cJWxbCIqzcZkgUc7IZQkKJMEBGCx4A1nHCWl/
yvk/NweCi0jf2r43q8xXF6y7SzGHNxbUAFqGZs/JZcNl+LHkU4QF2Jzzzh2lOZsC2YabgrFKkeTe
WfgJsjxAMWevnCR4IOohnIUyOeedFLnwL1E8wNMo977PdbJnZEf2n3weZorGWW/V/BqgRo6qLYDU
nJNTw9DvqqrtOOKxBQSX41q6b15IkCabfyLRWGsVoyUvEh1+M7ohUT9jtsEMCNcuMAhOWiXDYRJ2
rI5xWJDAGjCsx5Sg9EijnFCwflTLxqmgUbKIybbImbB/TjrvL3ADJkx6F5u+lhrit5qHw2VGnSDd
yKUVKoP8Ns9GQZ+9xQ1TEjjLtFlrNV0Zb8hWrkVrjY2pLg23bn6ME/PKJj3AoKxjbHADyKWB3Kwg
xRbdBk0WHbI3+lIHaZFma9XeRijeALBOduqD6okOB/GohlpQ/bm3WSSft7J+7u8ByC3UlqOlFr3F
BLh7C0VgwohkT+/IYPKmyTQ6exsUZCC8hpzqVza/IVeAlY2sn4R+xslGtHtlIIUDuB5PkHJ+ItyX
obUYGiCCRivCid5hUQ++mpoX7gTezpy9Ga+TeBAjqfwPwVoLoa2aEqFWr09q7ZOPP5F0y44FmE0R
T3jC2sbegFm8dhR9G2K4zj4+4On3h3cVjH0F+CLtQTmqJmp/UT9L//G5FkwfQuFAunW7GhioybpX
BLB0EBHU9Odl+55Vp2YiAy3SWFSg5K7PwMa+t+CMwwHOioCKnmX76c1eaa6RtnYTbPGztDOB+V24
0/2VbpBsz1f2MEcQIVv6tYm4dufzr0uYuO/PRIPMpQSs8quGGJ1U/SLv4VVcLQk/+hRtI5U2BYyT
B4//31xGSgiZHvSvFAtCCaASTB0Sq/JiiirKnyr1F9KhKxMl9aYygqKkPeZyToEj/OaUmC1RPhv7
HTxv7NRdd96ElhYoCVIkCl6cdxGrI/Z/J6buOtMFi8FsCJefvX6zyunvMa7CVl5k/mCkkOnm7qac
aR0BckhdwxvqnEKoLiXzj0a+JuVkOCkYkk/fsm/KEmNoijUKGX3M92WnXyjPZqBCI2kZ5ojznGkW
gplCnV13kmDbfMF5sDa5jczEl1wDV5GvzKjYddXBtDKcDngMAswInD5DET5hyRPve+uO4sT9k2vU
7pGraQJAh3eKhGwMQLrMWpakDY5PXqukeh4LpeBIz4eA8lu42DO1rOAFMDKpbKsxeOl8D/T/82R0
dzSypzX3PqGnbtOy24LRXZ6dSqIvjKLNPLJX/H5yTOSjPuGB8tqS6VejjsTWsodOGC3p2CL/v/or
lm9B4Dk4ikw1RgZ5wHAPeXzCDur+RWCzorqmRHDtz0Rpj0PyX9tNL035sn20s7+k/f0ne5jXGLHq
oxLt5ptMlYPBuIC4ijjuGH4JHQYty8oHLmDdKBZ5FYHVvW+jliTOdFeu0IiXzBXpeRPi6ZeDr025
sowzrMOhtWsmBvqS4iDh24YxHKr8wUDS9dCfQRYbts93anIQuJ/v5Qp3NYbhZnH7eAqSqSJtQt+3
XBkzrQ0CZVa24FqDJUQ0cjNg3/DR8yprFMz9R1tmnRcL1oMls1we9cpGMTeEhps7MirRGfqsX8bs
Qmmp7RwOBXqeRQXYno+DEAG1eq1P6uv4feWVy95u7LWpgTrtEgHt3NbOawLic/Sh99y+NyoIgdj8
j1/xQwb1OD3iZpz9k7tPIl84NYrg0Htt8qezZ0hz5/5Wc0xs6bHzSQOpr0c9EhaW+kHqqFAyb8ZL
/TAe0RJM9wzjmQ5DZ8Z/yJ5licP04fMeVIuYXXBO0PFATS9GXBBFrd7LJ0HlIpEsi2lRRdsDrRg5
05OTd+XYZpLlttsy/Smhur5zJKsqxjG+zoHqToNMMbpsSZOXQJOLh3OWgr0aoF8AaAHkTqC5QkeR
nqf1hZ2CSYgrYvmPSB8NyIMLFhxFUUsSKPwXSPS9J6EfIHTUWCl5O+u2nZi6xa7He8KqLxSBYceT
dKjpAliZEq4HoNy1xraIfDAM7le0H0KKxPG8rtzbDoImYebESmGiiy+VoNh7IMsBHmGf69e3YDh2
rpMmvNgrxH/FGugFiDURdFUR3Wj5CK0iG38MobY0MsnE4PIREgxh/jFMLbba5ZSesZCEaAdsSPbE
nZFI4B/JJYWhDsP39QekQljeb6Uo6k65Pp2oJ8XdxzQJ+OyaUN1sq02pTliv7lcSpjrM7GRu0m86
Awc4Y0csJHOQqCgtSOXAbCfKzJHEQXi1LCo/LrosYGxBvd4VTm4HpBQo1X+ounQzJI2xDg6NCGjH
cMDahuGtAdCfxB9gdggLHy11qhhaKZQHC92S0s1oL0QtrgiUNh6yTlArfUJEGTT6X6NTt7Sy0Y+v
MvvXFuTmkynj0agOcxTvO1TObeuRX93qOC6oJ2PHaRjbj3eQIn91jG9tx0/ojlA42o6NEmTvM8MA
yL2twfv4Rxd/Ney8/1/0/9alAgIK2EeOBQHIyasP8SaCt79xgIhc2hVm8RIt2Q2vJcH7orXA3bF8
ftauNiGiV4ODlKZWrqvbTnd/DOhhuqOaxnQzlvOZugFaEjvT2y1C8gM5SvWKSt1eYXgZg7oLMssC
nkLvumpSl/yq1+xqDjSZS8kWPWPttf6jYKyTHYwTBoTx7RsYqM7CVxdWb7UZF2AmWBUuKMkGp+XJ
mxaAXWBQlMjRn1pc7pPcsAsqHnTo05Dhh/SFJKeGb/Xb23vAMHt9kUho+mU83vmnlhGMmplRXpq/
IK8AfzI7H+OQOcZy2QpF20P27QHX+eD/AMxl5WNRvruVlUnGoAgLqJVhsUOdv7vmyIzwINpIykQO
Ixa0G0MDPjTN0S5UbDxwRiD6SIxp9Ey2Xu/Fe1GCRIvo68kht0KKzBUP6h00TNrA8gw7zaRcfdIl
ZyIQ4po0e0IeHuS/WyRPn9Xxw09Z0dYTOeiOLdzdrCEzTDCGWmMdphQ/Wrp8sRhZyTnYoNUfOsNK
G5SZ1JXfyM5ruIq3eJkSerqwmjy/W0Iv5oEDGuQXrt2tTa9cELU/NAOYhe6lLGMuGTTniTfT8K4F
BKdo95B6IuhGg/BzsQ7GTq5OM+u3n0dMs7QGpXT2AdfI2s19NPJNh6NTg2EaQ0hsG/WVUGcalGFf
zD/IAFXz/7irp23f29py2JJCQWH/YBWoQeqkmcgdGU4o8F/ggFE1+yxCh1t4aRG9VLsHfE//+T12
u1jScihTX8Ttg6SkwItL9UrdGvIt/00niNEXaFp08BYX8vVU7EETk6Bacz1rLHWxphlb9PgvX6AA
VEnbZUWhfH4Ae9cmldinMuItjvr/p1EsJDXbZhrJN/AStcfWYyjz7GjtdOHtdCQScURupUGMbLZ4
kdvwpK3Gu4AjtCh8Uac2JNPkTzr/QjGPJq+pQRG/+k3KsYc9wmwwqsGBhIwY/VZyWDqyy4bsysDF
cQ6x6vNMkARSgpFSid+OZ6CZQF18mXwbPfBWy4GkFUxXwOgm40l0QpOzz8nCTAcIsTQrVRhwBiek
sjEPCTb/J9CoQ3IVhADi09K+WAHp+xj9fzhfHq3Yp+Tgc93HE7B3bV+aVHRhrrZVSBU0AXoaLv3N
etZ9wshxtwLpW+HUWU6lDY0UeSP/tTJqcZxjl6j7/wujNRSygCRt34XSEfSol0l4rYbjtxxVBgOK
Bb3MfTHZ7+pngTnPNSKeLS2/UL/PeChTkbPU3hQW5WB2xHkkJplcZolMyq8juXFlNzrZVooylZeV
2rvwanLTMInn6DNoDdFblulP/iLU7+ztQYGIGEvHxlsiyMmAMGRaiZoeE8YHqUAGzArZAZTUTOa7
IJNtvAJnO3RPFMyqXcAaDpCaV9VamVWXOobgn6Ub18KlvUdgBpWQoxEDVswCmcqkAfcgtjGMft1V
UuDxIc7KmtWH2ebX6R9EAvBMWzMqA/4Fv/4hrTDewzzpUv1SSxRgXtcFvzx66+TwrrCgxs5g5rCi
6V6CYURarIr6FvGss4K4mFBLfC2JiatvDqQpaAu2CJst2m9ykQVl3uwQdIIZC5S3ite4ABnUk/sc
opM+67SNuTbX5L+iDiEZZm2r84kDrUyqtl9IrZN+Rf3ugxgITTYNaZRl+wS7m5S8smD/b8HDar3U
7mRvwhsdzwZRoW27n9CuCCvPM6IpcWYNZ49xz2hgTx1I1aj5Qxs0jLe4KGsF3MPhpGfoBE0+7cHf
aUrbRIhKdUDqIGidnZ0mLsLO/up7J59CqOMf64nhkucdiGd0fDvkDJKsrWktDEJUn3R9174muTMo
hDIIJTP4LBx9EYtHPjYthnbUjn5fTHEM8RRUy/eoeHQ1K9EOuqxTPYMa3I/F6UoKa77N9EpvUu+t
sjvV+qvAbG9f7wCTSPHCp5QwNOGDFOAooNCJwObIhI9MFtyWfJSyOh+U63/m9fW6Hosg48QlLziR
6mSZs+BD6AbKVwHubAaeSVgwAyBKxZoSe0l8s1bAiioGP3KtG9zXZjqyeacwMutQKDc+FOpAEejV
zNYfJ6Rmq3/0rRUfs8X+kahLWWsW/sMdCR9n1yLcoGcM0ESYOU7jD7S0nQVjHmnlEAVbUW2pfSoZ
/sMYxCpnM5zR9owI+rTYh3AYvADlgHZLnheEb+RHsWaIa5DpKpx9HYC6eFuOnHydDGEpFxpEVv31
0foKYis2VMTxoISIrDQOoTcgN0jy70Y5bIO5V910z8c9ymBnhMUW8agHsdbTAvvcRR6NUWemGGl/
HtcI7xH0EBjb6fei5LmwsLpQdSoSH9CGYmeCvn8/auBgRaAk2pPuKp9JIctmGLp/5eu65Wa9xt2L
t31zL3Vacbg2Bl3Dp/K2BNvIC8tMYoJ+Wqa9FGE65z/+nDkIh3Nw7UqmafTUtQQolj9j6LWUz9xX
7NSalvV1fAUfdw8FdoI1GyBFBBro/TnV1I5AAjMeWro9kUG1IF+O2iFWsj4Qu/gkwRTwMDbN9ojn
7HTD/ij82LjaLhcxgCAqCDYBBQI8+me1PhUQnhhlmVLYVDswKWHSVbDxnDb6tTAxJ4hW6UDm2vAY
LHobqbIrzS38j9H/GMlMPyl/cmXllUY4LA4ZTAGFQwwPDSPywVs1qXriuTobRWS583PFjV9V9gFX
PIdsvEJwkmfGiH0Fzkx6c8FkB/JLNWATi1Fz22VdTGQ+DSiU+6MdiOWJe0TrJnzUOKqMk8NbvuYx
ssjnPdBIh4CUI0gYFSPLVZPtVhzK7f42HBHzqiP8ryWnFh2jk4WVSjQSIDjDh0ryxJd2YpBY7egp
23YCAGvzh0IOvy5tLrQAjF96B6HUtv/NCrBO5UCXxT3iF9jhVSIYrcxJ81LYED/JsNTTrd4OmEBQ
OtIA/VeJ1Ivgf0jve3lI9IVdJDxpbJ32GsjYPGmgQiIUuXp8eT74mqEVcJaGPYg7nNR9wMlZzZr0
J3ziej0dsB16n0taUWkW+GlgqiS0ibPzyTtlxWTYpgDLyPI3pGptlzWjI2PoIK11VMGrNtJPenPO
85xU/7gibpXVfY5Gxnj5SwVJchvpFECER/0RSZnYGK2W2vUVakUM8qr9ryWhYBCBBIc8P8JaOCXs
5FZEroZtt4NqXbekagF30osaHaWMuaJY8emckS4mWcuRLDppXqWptBDnLIuw0sfsPwENRxPfbsYH
DF4xORcWbg43mgkBQF6DiLAVqt5MVMG58I5K646PjM4qBSpNI1JR/nPdnbTxYtzXnKZ4+jbgbYFO
ddRWflvNLLD84CoHGiLxdrI+tHMY7HkNkUBkT8c7+bV2ZO1ypWkYcUeiVK8Evaz2SkwTEe59IyQj
TASxxRMDAY1dZYsGSpBzLxoPmndXxmXpl2LepLEwnL9Rrq9WNp53a2vahDIqb19X4ZkPoY2w8pCn
gP3owED47pqJJYjEN5jSOr6Cs/Up4O6qFKsBIy2qeDEEFhtsiudRK9HSCFRV6M6NLvHqkoiqrXhD
26oXEPFaFjaYgLGpKDovxgggyg1zjEvAnnbsS6xcVYvyAr+gHEiuJuLNB871674oS3DDZ6wSMnyb
IWmvMXgNaORa8ZsapicgADNmq4ouxZCQvc2/t2YSqNJEDDDgbR2xy3Wta6lJKql9hu9Wiv5n7xfe
3qUTexga2z/b7d3pAs3GkrkuUaqDX2/QVpXgOPjIiBlR9wTh4IU9oNVzTBZm8rQBH9IYwtFNozqL
JHTfqft9SkyU6dW1gP/c57+a6fdnYmHuQPK3VslqwStAG+NAQSQGlxW5677OytDJ7HPirddD4wxf
GgRz0BwKSGyK3+tCS6rY5IeVLotrmgT7LcTltdPloS2qVVs6I1YFUDQ0LGWhfPxXP0cDDWoSqOIb
fr7otHXG47vKwJPkMbip3ILBWhqPeDnJKwJBvFNkGJZgdkjYS2VFCtwdmGtqKbdJH6mjtc5VHSLu
TzQtIGwfCXsjnSOtz6r39EGK1DMDivlz59Kf2rmXtipnQ0lS9E2NI97Br42DyFxCv00VLSosbxm4
JHBsm5vFTXJVXhrm0rRcz4pEVLoToeZMtlcHtJt8oCVAsqjZsp10oLSVDOs6G/IbxWhjY5ELBjEj
sRFi/Ey6yOXyliSasPHUnKaRmcDHDK5jsMnXmqV/oKrbnwMM/KaADkny8HPIVTQm/l7v9kTTwBoJ
v8Fd2CZBdtkG6iMIufgH1Ucaez/2UaJbx3G/+FxMAFi0N7WXSlHEuxFfQw/1dTyEd54sdYAuNo5a
7cgQCy+w5PEqf5He/KpHOX8Tye/8HVaUbv6kqkGjOamX4OeGqnml1L2K+HZFkUyju6prkc/3zjNM
IXL5QTi0tOp1P3U4hE7GTwE3pz5rgu+SIDyrKRHra2ZcUGVBZigHemIlv1/bSqtqu4jvljYHcYOp
GYXjFocvbfoag+QsFYB7nKw+wg6ZpFneGYSyuiq5H8aDy3xHhczz92WiQUfTQSC+/GBynYFuXXJm
R2DDAH0xW5TWW9Uu2Wyq61UZ/coZdiRwYPTcyglUGwLlc3ea4E5hNTcL0aMIKjQ+ojrtnz9aymDC
ShRVwjaUnYoIYEGA/dUYjCr4pJauEy1SCXJKE5NxvXNhew7FmN4o1Bw20aMGpfdtKJ5dWAitLGQZ
fmSNu7Agl3Pf8UjzuGje08B2v+MMfcByUn++U1TM/gZbvjV8gpKJZzAbXVibzvajaGTnhYEfzC+d
p5cSB22OTHEytwigKko0t1PGWKOvWXhYHcV+jPX6Rgtper9SjTyyUbYwIF11GwACzHvfukiIQEWz
xdDWQfZ8zoodCmkgUZyfLF+vgSnTk3va2QKWK1euTpjoUjwEMq9uNDiHNqPETZ0cbDjnniqsouK8
98Gwbf9u/4V7L9SCLr8oFLZjBWAJudJ5IRzyqrUsmEhHD5N/ST8uBKZM71rcR5mL7b+jAlTZ5f+F
0jXF4PFnNPECD9kK6PCIwyyDVaSKza26USldtyA4bAJ/TMhRIGu0//1F355AB4aWVTy/9okgXm8n
TFSSNudXueLq/ZBcYtQBCcy4bsIO8ZpVIduXsYPzPhmIyVD2XEcrh4cE/II7xqpwFzw1bama73nl
2YdJmdtMTap7FQL5kvV6cFJ6wJ4lPp3Fwoj8/nKVJSil7KJwE9j5gQjrQS/vvMcazC4RAisrMKYN
yTdHj5Qa+yIhe0l6HD+mAvgwuMHM802Y+Pov4eyofGp4BdaFK1eWfh93bK50X8S3gzoobkXXgzZQ
hVKuTrocoEnrnTgFWaPYPsGjcjts+/jV7UpGYMLD/pIIAMw4tdCvcV8303GU0Qphzk0VloVRMsTk
walglS/EkXRSsgROGz9n54flZeCVjoFs64v36sGj/aF6Ad7apO52p+uwOqIWUTO7mydy9Ft0YHm/
46vJxh7vsj2XsahH8QH4hQnT3JGUblssJNCd+fIRF4yB/S8gtJ6bXDI0WxrdDjpcKBsJcj6ddDvT
i3GXMsT/ycCEywAZaNucQ/6hCjBDcjXvWTHdFaV7iDT2JEi6W/E41ywbhRbCa3VgFWGATsYfkoRN
0YErlr/zJEnHVBQFTh2vu0k+Q08lW9AVll+klYjZ93C+DW4JaNxgofZp21LIs1yup/RTAVuxLwS5
g7IaxXWbJ73eQp2D0Ri2QvD+0GwA7Dlm2hd2sMfsmFOuAw/er86SbcO0NR719p6uogu+iKP+6gCJ
QADC/Bv5/86TtpvycbxIbKW7SZRO4MaMVz4p6xr6F6ifbnTE2Kqixlsool6DWAuvbTGLyujcrIIo
XEFgE8o0dxB7xzEaZoDR45iYpwFfK0Hcyih+/7DJgFNu8SUOrK6GIH97g9DNw/CTfA3DMi6ivV5T
I9prIQQMhCgswjmzaEHkmaCi2e/2+Ibn9PVlWogCnCnkv6op70+7fJxlbPo/675lu0UXDfXdoDeY
efU0SM8wAI6xb0g71K/5e7bufK5Ndhk6gBkkLgRLSMSG2BVIItBByfpKiRRKPvPgprWLaf+ybU0a
3y+8W0cUvppKBg9nMIe+pnuI3yiHHbm3SqBQ+YZDdVFvMm9geWT7j4VZDmgwGD3FJVQfIBTnUr4Z
7s1RbGRtB08W7eqqENnorqsBDFbGcF5/dMiEaUNsyD8f1QgXintLvyJM9cMiiCUWWvoiEZMAVtsO
PtVxzbBZEF+Ni+7iGAP01xWm9mu5bcQMaZccmybZZM+nwfjrLQ1soADxQLYti1ebtfOISnf5JFg4
NcHB9Cw41zBCeqCSh9kXLall79YgFYmczBDV9OPHYwqskJZ2DkzqdbcIaT/U9225994gxTAds5YJ
SyRknj+0fhP+SlS1FMdGcVTzgPGpz3T8F7Cwx1w+M+4Pcup3myInIOfo89zLlmbISnRQ9+3bl2ZD
QfQ7R9DOcgH6bfhbjnJhPOdVUgFhewpJCwv83Uk1cIgg77W4e2kWKa0UYarufxReIMsgUBBPTq21
BwnsGMUM69Yva3YI+jC3P7PF2yHkvgB/mrjEOwAybRZYv/5YEZs5yXWbFE8NzcL82icL0FEO6kEx
XL4VPMvu/iEsBY/muVYIGwkGgQoW2wf5Kc1trfW1vwjZFDUXGCnk27NuOfjxHSmCY5ajJpInWXsh
qjClNjkuU7bzKStYxl+k9QTNI8+wN4ResHcy5bEPLPM/K/4hKdBDl67eO1vdi/vwZLLmuiTTN+r1
KNyp7JLslRsRZGKeklP9ZeJyLFd1TgRm5vKRW5fwF/1s2oYA1aezo/VfxeP97Wd+O1chJVvvAYyx
fWecE5J7myncXVSpJbf7x4AXrstvXlYKfyfYLK8D4yhOE5kyXkYSxZACYaVpYCeJWKSZHvsGF2Yj
9Q2C8WlGloTsx1YfHkR2GiInbQdM01NC2N5JT8ttc7Svd8qXv+m6H0WPRbnZmWhi4C6sVZFqedxV
jAROYRv/jhTYIDKuj3lpoyFHXaTAwEAQL68xe8Ip8VSwFtfvwa691/sLSjeQc8efRbctmBN332d1
3V5x0hjprgB+vWOFp+uBejqYSdRqIr1Iln2c02ZNNfVUyXweI/rMWMTPYUtumXrB/Z+dzOgs+eFK
oNBm7PkwSoMXoLQrU0w9EohWaf9Rl6+DZRKVD5kev46ikVQJsFcbT8CkaDXzDycmTNQlUQMfwBG/
CjrpBtW9B8SczrgszZl/bWrVa06mNjUsHrg798dvuMzEkHLcw+9FV83HGBdvL2wTJ1fB7DXrXDlS
QzAHXDXtIpdm2YGeWxf9u6vYFF7VBXJiXtJjV6eBCSP2vsKCzTm+4dxJCqa9gzvPsverJWbAhDgh
0iiMnJHgJIqFHpISTlEd4phTSzx7DvU6Z2VxHasXG63UIcHt5Wa52yzLATB7uotZWYYYl/Zn7/Rh
rgQngAGa7IfEt06N+GAs5HkNZxyrYyot5Y9F7OwzMEg1ZSw8lc42gBc2X1ta5LXBTy90ZlcNhnpf
QxCAYZIyp7yGqusW63XPMCi/ZdvIxAtuXUZV3Av/iIIprIASSe24TQ8daE8ziku5PQLbEYDrE61S
MrtBCsTO9szZOI6DFa5GeO8ZFqfRdIx6u2s6u7C2fLoqFGR37o/2xGvo1CvlmjyjK4VziJzR6gmn
6IDzVE1RyFR54mRyrChTginiw4/CHpLTAp7B1QK1h88IaKWyGzrV5cMPE2XHXI6jcfEZRp+3ybSi
nRZ4++Yr4LRh34DgeebGBXyX57+R0pn7MmZ8x6lp79/jAv/8wmnj000DO3Hr8OWiM/a47TsFGSz0
dbqgM2jzSMAaTtVv9NZvn8tSDGIFnrA+6A/ZUfpJfmqGSYO+8h1+D7BVgtm30GpzuvxGcgKdAgAR
zGFTalYQHncYVLPagqT0rNKAxRLfj1OtWS4y+yAc9b4sUssNz1GR0321tP1WgXZpaLlgdTqcHj6E
nOlHzgGMNoEIH0mi4jVVwzk7U4HVnU0ueGkmqSpuPd4oSAAQwOBfOq+0wOPK7+G+lGY+kT4sr1UO
4HpnDs4VKBGwl3f8uiZT3sNzmF1AdB7LiQta4dXu/63YPBR7LyA3OZINnz59zRNM9dZWHlTy8KlH
DwTsGeAHJzOI7RW7ko56d24oeyLup4CrH7Nvu1C+H267IcM2uDQNEDcGkk9BbLEAhLCsAZXTTyw6
jtMxHUyoiXDjpwgbc5UItgKZdshBVCV37/JPJyd6oTbLE5JPOB4B3k8kpFBWkRJM6LHRd4m+o4Zk
wbVv4YUOmz0ev5sRYGKU9biPWaqmqwb1S95BknP3nuPPWNXF2Rnr8MECduQ0pdzQjOt54SpI3evd
chFcUSyb96ly6YBhZHLUvfv0MQjl26/+k8F6chPcp8OnZ5t4obNLlblNbfUZmug7mm8b8WDWwqvc
af90TnEAEt4LjCWZkITwcGY61kk3FaGEsUpTNGvH0pwQuTfxLoevlBwUsdv0dgnR5VoFNWLHugWo
vxxqnfXYfxFEOqNmtczfWxlrc9GWDTvT7SsILZXemk3+qKG/4OemLYvSBIE9ZTRMR0SjJWfh+TMO
7jfxRDKDJEK7dvyhLpatqb3yrnpUjKhvZDMsa4WQdk3AegtWsxxe4/igmeWQCIj8D5YWSLG+HL2S
cmQSnIDopdV+WU1QfBZk9nk1kUDAgwfgVmNJa7hEE5DL42dqPI5K4JuVnIaXw7acUrVAnQAPvrAS
p5nKvFv/bFYc67unWBCCd9spUQD//tz4cpo4MsJuu+/FMqS2s6dgj0ccxNdmbPBujGZAwxBp5y66
J2W+bt10xuzqsgxdMqoJ92FNAwRGfkwFT75FZiKGNp09Jeh6LLnNUA8dcS8/XqkUDXZyIYQINmui
8A4mrzVaB+8piTYJkaKae/bu680Kr2FXqoWkRlKVZri4MtIOZzuIaebDLyRfWmhBdgqjQ/BfNY6+
0vdvDbIV1ORvEaMq4JRu2YITs+ViWh4LdJ2J0rK3nRM9rcbnEwqePAfQyeBOVd7VUyE+rzeixnMc
QNTqb9UWMzQjFqkXmTvKfXaput/pZaYgHswr0Gh1uS0k78VhVTupNwgt6/RiucEZ4dRwqQOnXebj
Zr1Pzx69aF9vvZrYOWAI4XffVc3aWT9qo0Z98FULpi+DF16voCh+nb1Z5VzIaChFsc2KZgfK4eQB
QuUNXODlEHdWaTQm1qAxbCWQsA56FFmRAu7flwJep0mVlF8iH0qlXx49LB/KU4MmHQHP4xev9zRh
wD0T2bRBm1L4xYtwCQow/9hKNSD3B0Q+g0uJRqbgHlwk2wCR5IjWHSQIJGtnBB4PiReo56V97So1
3U8BEC5aPhhXJHWhY78FZLy16rxErngLx99Xh8fmp/pRl6bkHcd+TxibOf9cGVTwnptB9yD+FIUY
IjZhyHGFaK8L2hyFSTZrF8xAu1l0a5weiUy55exhfu+G+fPpcO4kTq2IZzwuuyYvp3uSRvK6nExa
b3xFMfUDmawyh+qNE9ra0kTouR8BL5zpx0C0SKpE7e0OzmP6rZvdVZxWQ/EvQyCvAg0SxJMXDS6D
GkQThcHuLWcwIHxlUSEDOD5ZUizkypj8De8V5UW+N45VEke+KfE5VbYoCtAmywbBCzPKD8azKiaX
GZNzWe1YTADhjh7L8rI7wk7S7Tlz23Us1eDatHW22EUVI3EYnllQDA6eefikXfe4WCtPwPC8fF+P
LHLW4U4mXJWe/jukp0vlUIfawc+vqq98TglcoeB487grvyzmtcDP1deiCHMhzbqrHd4ioiOBiJnn
1MT6X6Tsp+nkiM4nO6DaPamTyODNc5G+5rNOzRR8lZo1iitPc2Bp0v9Cl9PgGm6wUbfB8MxOgjQb
0IsL0XK59EoYqktyirpzu9EtjrgEBwgPnfjd6wPrFEuiKpRlT9n0ctYl2yzP0bBX0MPUnOZ9rkUr
eilMNGoziekfhI67dMMNPU6NcLNKm8Ce1MgonSXT3YldsSmSRf7mO1tENfYpkz5NsZlklEuO2E/D
JXOPwylFDlF5Xph/AwOtSffZSarI6r+vdeq9qJoylcBsZauWIiqE2rhFkxfzoRw5mwHN9KgTA706
zJWD+a4AhvJenVtnvugczfUc0HFJrAcjbAR1B6hJ+3ABhrJP6Of001g8CjVV5YxsVUfuhsvhB8EL
dR7joSiFKpKqZF0XSwlwTKKWOXhVclIJu93TpT+FXC98wkxS990D7e15T3fgPvOBUHNDvdfUr/77
aJbFM0zyGpoxiGApuDPHBF2DUzp4N9Pr4RkscVRwqp/KaUxt+zHkuEblOUQbKZrM7HRtEEhMbO5B
d8bb61GGXRHmxBUuFZWkuN62o8nrRhXDZ7Nn5NBdHPLBrCpG34c/TSnR8hAUJH1buk/ttkOGWNSK
6g/WJwVmNoNw61iFhLdZm6MgPyiuMsR3nH7wyJ79xK3q1c6PjJxsARzYU0Zj+AIjB+YRhAK1yWyR
UsU1J/SxwmcpRCi0cP0FWyJ8nk1E5qE0rvA+x7f60imXKFnQYId30baSoycaex1tSfK+pV2xlY93
2gCqT1UIzoT9bfiqT5PTzlk7k2s5dgbGPO7XzAwiNuLGiuQePFRi/qC1R4okLEkg519yFPIZakRm
6fa9tCTWWa3XTfgYF9dN2jgeK+x0UoZNtqzaSHEhLI/IzQnPvz9bju09YDz4ysr2/xF0em+Mjuz6
MLdWfETDn0D28pDcHjjdeT60fvBeflVF16KzdN2udYkfoMGi4Peg/vrOmWFMcDhYSHnanhk8P02U
muPfKqUunTvyBstlSUd4aInnT7sa01VgJLDP55lkWkzXlKCZrDM007w2RkG8lsfpNpMBWFSTDW0t
GJENzQ92WbkGW5SiC6GJlY3AkE9p5+SCKWVkuPBX0Tt3iocFfnqFlSCzRro2zz2yFXzBPv1gMKTa
dJMxwXAYHa4ppsNvl5rdWfCWr95qUnjLyC1d9Z2AqUYW6vjW1q02jkSwP8yNSFbM+Kf3D/yIb38L
pJRIttTShBIwn4BubK6RkpHb0nz2D0mVXhoppo7yxy9fWHQqfqc32J7vRf/OXaHhrJO7MDZJJp76
nAseQd5cPDLIz8lN37XSNyonWjL03ezwk1zQ3CU7hGddHy3b+8AqKXC1aZ3hCMGFplcUbKfi83U/
qWCiix2w+SA47eRIyzNdtaG08RyAONHomnGtXc+XmYFl3PF+oL0y9E0PuMJRKC1tojmcfl4h83+I
KoG1K8KWBjsgn7lfqsbCiZOhgnAZZCm2b75VxMXI2jOGlj3v0924LDU227ec9TJpHe6+iTSyAKEA
Pu/EIGy0W4ckqLUUNL7ISq0MXSJezD2P804c2Df6owofq7j22CCBt5S+u542WvM3LN/LbOsPsA7Y
VTwu+raBsbeNF/Wp04cj4/izi1iluWykdejhcOeCCtWWOPtQF5bLj0eesv15MfpPZbxTtpc8Z1KH
auEl52jhkfEOB9G3NDBW6QqyGrszIw/6/NWraTJ6Fu3BzX9ayXxdQD43ZMvOwrhOvPvy1YmRVY/T
r5l91OGjTpw1DnAsqBTkhRULVDbO3PMxjyOq/LH/ZBEASgByz1VSu8oUnIjNBn1WWvn9zaBz/Eix
HvJHerXnBJ+ihuVy7KAQQes0rTkZXsZFdv7jINu3P9sDjPoX+3p4jj/uIoAaO4Z0sXM3mZ3S5bk8
1CG5kBCitaLU2rUXWzAhapuOCWdKGxLdiPoNjGNINJOqGmfKmHJsbs5T1F/5XvEgUeubSzPUgqCy
tdiV8khAGHVmgx4R33jTS2g0p102a/MLi5EWCojw+es6SxxggFaX6hhUyRP1CMwliZNCcgZxmAMs
uTfujSKwpd9s/X0WCW1lUP4juPDuSey7l/LKZvcTiBcGVrhiqBtJpcnKNGdjvtBIn2fKCvYpZVyU
DZYeyAW61kx+V8SdMuFMfByrVqKD9JkMNJrJAuhz1JfHxUtE4KaiugY24VWoBB0/EiGi/gllBI1e
Wmr56JevQ4jIRWBv2JRqWoQesXDzSOh/0EMWIrL6rMRydkVRFjvzLZBvSBXg1FZqydPupzGXVIRZ
qsMRbQL+/yOjiC8YN+t2Dw2cLip3dq/RocOeHAKCw9QkCdRrdpzsniL83cPejcJjtMSSNzMKU3+Z
IJJmF0hgPALa4DZgtY4Y9tqERmhodApkmv2fQ2FU8FKasjE2VxwuBz/C+SJ3rp7tOpfeaeiscTA6
kcEBDcDwcPsE+4qkZItI+QWcP3x74J9q0d/pvHdqORDKmmKzWIvflYOXIsCjYPMGlWHHfs+Bnlj5
M+E54jKMjCXPYJBmCZcUa/xBpjoeWNvRBofByByKhMrv38BwCS738KThRufOm+NK7ow/87nOhrgM
llJyzSJcqwEsi2/1G0vzzO/kP+0y9vq196HwLDpK9QH27Q9p8XucmlQc+ySL6CgLlaSK6zZv89Pz
H6zvBbKBDTtzPR4kOv2n5auhrB4KGZim6ryWPdzYL7E9xLoPIhxDa7VUn1bZKb285vSVvgELtoNP
WNC154uPzsYnRZn/qKSO94zdfZUbuBwfe4Y79XXhgPwlleDaqkNuZISEt50ypKJnZichL0YgAiJ+
No0bI5NrO66N8L+7SEY7AEWmL+pgfptxtYfSCExUaXPzfZHDiZCOucoFX8XKvbGB0FP7R/YOXa8v
EAoHkAr8OuHULAJY4awC8MMiJp9V4OeVDCOV+ke9cKMx7onQsnHOhDEr/uNN8WqG7SpsWV3lYkWS
L28MYnU4NgqfDydLFB8axWB7vcoeNlBIX+0oBt8gbaTAL70G6YRIrlVU3Qx+9rJlezdOvbVWY4kX
cyzfolI+79/h1RuYsRi+1di7zOlXU2IMThM3Tk6FpOu4G2tQ4zSaP52260HcZ0nO3FwwQ9lUztAm
I9QowfHOcNDsMmMWplz8/Si4bt+qHPjKdsv6jB24s7XdflyVAxTL7srqYX6nHJING5rvC35x3ULl
ZK+gtjy/Cgt4wHNwrBWKwjQX0xotAd63miZvTNlbIKhjUsmqpiguPcXpGqH+9crmJf76VyvDytLg
qxOPuAq8HtTyt4ynIUmAvimOmCBsHyLOAZFrGYJEOwHenL15LpzSclucSyKP4QBljdoktSv7/nsl
0UzulWOoEtz+fA6M90YbQ8pe9Ivo+VKVCwBp8aJO9O9woeA8MP+x6FervvZn8aWoQlu3UTelEZYT
CSUFkpcz3r4/B91UJtc5M0sAgWHhnE90JRzcIF22JZJ+Q6XDDr71xv8IiFU0bcxxMO2zGzslXjOv
q7CCEoBQpXGNkuNmym9w5tCqawAlea3jmesSNANMnw5edJwUVqRumkqEAM/6UrjVlVJfGuOlnu3S
A4DqV7wn5SUopO2DukLqbSggq1WBOWm4lMexxLpTHBSwSBz8Wxc33QcUcffJMTLFEq0Vys6bOi5y
nXSdgBnNdeIIsgLPnSTaCbHdDVlx4UMlMgePRZn9aTHxbbl5SeAEUhatVcixdFHNBPw2y3pOSDJl
ji33URzrNtQidTgGkevEXbTxmmbjs56875k7oTIjijJjtw1xmJ3nVIkRr/jTPr7gxcYaWMETTwQ3
W8B2YI5RqdJm17d/ea15cy2ugKhFRkv+5YxkDJBh0zg9RqsxOvFrqkRdI/R2uba9wdgKgfXQe7VY
CGYvMuUcSw+GhSHRJEebjQHyTOoaR9E6AyKrsveJlQY0S7HAKPQeIMhGNTBuAp/vYaa7zHR0US8D
j5rnbvzUqI5EPskMvMZ7lubUVl91QYGlBwhZ1zW1bu1IDP99y5DJEpuHKeYFH6j6uZEbgYiNQVlx
9GSnnUxi4s6UU/t4kfkv02SxZVAeW4VMPSJlC3PksFN1NuP/Azmjtq4xoxq4sMiTPMdeY57AnzLw
pHxzM7xGX5Tc2TSni4SIK6fTM0Il4SKg8zxvlBtdxvZH27jP0id/rqm8dnmET1//W8jCKJKdGno7
rGqhyhDEGxaRvgkg21G10kUvcWscCWuex/ikSSmyG6qchjlBKp7CZIsBMtUQpX7y6HA2dR1BDT4m
6taSxWHYJ1eNugB5UmOVEwMqYQlft+n/goX5Qs6vwzutYbcT5vZPGX4s9o4/G7r8WRspJeFE1PJ4
2viBvR2M39nuxs9ugS636NIyU7iwMhfirai8v2JW74Fuke2Y+5Eana5+minp0Rl76fZuovzqKptJ
W/xg8ur0Yikvq8AmaISPcCEokrhDQwI8QCgqJhRPZyOGu3BzvOKe/vorZHsAodHQ4HTm1RYJYKEo
70q4BRFCgDmOKmY2l2gtJFx1kRNFyfx1q6t9Ns+tfMYnp1d86cY/gVUVe0mFHcku9pp7tL1MIpSl
KlBPkGewM7364t+goV8RVdGpW6dBfgE1njv6KnAGNEpAXVftj29HHuil5UK/tM1qgAIWxplBTFYR
UrmzYFSwgbP7Kkza/pTgO71ovDaM9Qj9cgqKcvsmPCy0updTMyKFi/R8DrrhQUdzX/3N8se1lXFU
aFk6nH25mbCa6q6hNC+iQ6djpNuaaVCzJLhzJqbzJDktZKYDCP7TghWb7aJv5J8O+eKANP1P1x0C
udtDBiFlD9hdXxj8/74A5H7x0P95CUkw9GukXDMSNVbAl0mmnoBdFMA7txAGBh+Bm7VTUO79J917
S/xJf90pXwAqmbzyHJoLAkVU+NjJqboQss9fQgnbjotMwa55cfB8+iFCj+Sw8Es7dpd1o43HvAqq
g2Fbl9SgakiVQmgk/vkFGI0b+kq7EBjwp9tkoQrRQW79bhDXPdTq+IRtALZMC05TVVkIUTp/JDCI
jI3pmcM/7mFeR2+cHKjksEtr6uu6H78i7eiNlGLbFYXfBFvy2hEErw6i6ZtYANUdYu8PEZChfsbl
SHUw6R+Q2S1Uz6p2iD03Rs+WFAgQama6DuiL0w7qnMsVsRFcBJecbRwY8NwzrZqhnzGmG9AHM8zS
SgWXFheDZENmnxMoVXk4JUBUYHVNwiPTdU5C32YQmSZoYzpY4qktNO2l51CdX+y/w3b2evNd+Adc
3UJpkNpawFBMEP46wgzznDgivdh//VGm7CuFtNWO6NrdS1eLUkse0pwAdQNHJZQk+FR7k7b2ypty
NOK/IVu3jWdNCzqxmW6p3QgL5CRMLK9QgDaVSgkasr93coT8xkgyhtglkJGN+1U1RCOrdq+57Lrp
b8ngEbPfPiWHYl/nDF+GiL2VaGKYVJOUTwQPVIZ55cM2WD3VfcOAOrl/pDTdEbKKujOJbm2Ek611
s/CH5KPFIHhkDSv3y26VUz/Dx1KG98l36RN32BETiPnqmbhyw+Ms0C2jE8jlJzRgutUX2yIVtA92
q+DX/uT4H5OR/s4eZ4/b+pFGP2naLLwPvc3SgJchEH8XMj/kkCiFecBUApXN/FZ6BMKXUelH3GSx
69ZQlA+9OMKVgoDD1wxPPgqpX5kjovjhCHJegZB3ZyohRxxZODZ2re3waCwg3CcPlm/1c2yEl4ZY
44sozWqP2vo9WPBcCwTt0oAJtVJ8YnNNcywnMJr4KvYOgwyEDTWlDOgpB5WFhVUhiG5bESWUo4pZ
o9HgGRwe3yAWhvyUEjTs27BKLgeaTRVVvgq2MG3nxYmhXiYAsVD0eT0fPvRCp3n9NiFCMGTYDTVG
t/ItaJRPEQINrrOXRuVIDOGccDqoqlTxx8eBJePX0svvIDwAnUkAC8P3/co/0vp1lNR7nTcyWG6F
tfJ5Mi6KYj1F7I4X1CcmzK4J5Ft6tjxYvFQWPIgfXU2Yu7XgHEAR1gqXK/Uc9fE2ovTPaC8VAHIt
ea88+26b2geC+vFV/4punR7W9GOgrb4ip7v7uhdyA12VxBL++a451oJbkFAkvw0NC5t20hIgDhSX
nybOv9TUevyfATmiK7/I4tr6l3WFJzKIhkmyTGlHQEVsebNJq2MoR9OObDQeVrBcKD+tPSoQmLf5
MazeQZcWFE5ke1ioIAMBVBwx8tEu5Wwu8ek+PG5572Pi5MOG9knAhz4qBrM4Tfapib0tFlcCp+PR
abvqJqi3OmBKapu6kH4jg2W/9aBYUoz/NzoJs1owTEaHOQkj/hF3DhuosKH5bjV0u1RCb5ZvzUU6
rOzsgbEVSGFki0vP/8AjI58n8j7gbTp8Go3jpcwhXepiVNlLmzBn5OU+6ycacjQFyvezVURoegv9
NEdWynhiQHiRo7tstHsuBDDb8skhZvIsgIwml35lFwSja3VB3PL912u/TJIjsi8JVUw0ejNV6RyB
QpXCtznrViwAB2KTnkNackix/3XgiSTz4IOg84x7q7GCOo4zbtmr40qsKvS0kktiDHZ4GPucCNLo
xYLbikgUc71as7jwwi1u8NVO4MTHxLCOf/5B8QwAKfwlTa6mx2VSKvkdUaNCDTKVvyTGAya3ZKaE
rrM3Hds71YPLLEqbiWB155lbS+xVS2m/Tx1bTaccWQyv9dul0jsxnatA0yau6nSy/qB6HGKtRYmK
TqkVXtcMagcflfWOpEvSgpdYhTQpQjdUxA5KIukYmOz0uLstXlOy+E37mFPGz/7DYdJTWxj14G48
NJMSGxmUFSS8KUHbHSMf5+nIx3mgGsZmTVq8v7cc/JzFMdcR1+NeDLSCwbLigsnC1L1OdOu8k11h
3QfYQKFBpy8NsvuX6YfaKgOFurS6qD5fX3GGrHPqMKSIwlrs3VS8nVrL+YIuIuFz8oQgo18m2DeT
finbuJkQ5aSrJnQ4GX7TFVv/JZ9d40ejK3d33le7L/F7GxXKubNXw7RtLFi09trL1S1QmRy9Vn6Z
pEGvHQ3URTQ9tK5uUQUqLy67lbO6ITjecUCdfWuykmwop0oZ0W0aAy+WB15VXLY6l/6sg5ZTOQRx
JX0juE10WcMXCcMFrIPfy4AOx3TASIjBHr9bNO7snCLaT5F0prLl/zA0MN+BkEorj9UC6Fu7u49Y
oUG/+X7xxR8WuWEmRsx9OOiF/W5N1qJexeyt7N/cbbb6uRDBRAC6qtYnzbxSFuDpyv2S1lbuQInY
QcjepAXhYySuI1061HJd0mUyWppOPzK6FtUHwxxVGHm4NRxZCL9BQE7IqEGhpLYnZGSBpiJ33CRA
xfD34NF+im4KKGKDwlB2kx7PzvInnzeemj+18LsRJsL79cU0Lya0AG1ahORxTa3t9kHmm+/NBiZ/
gm2qfcR8einEVLfPE5X5AFWQs7t270vtQ1PMqYhnov2/mfUIp92CJb0IZrqdtuQbsFN2eMii2TWe
w9kcwOxpOIzG2iYYbHm8EgKCx1oRYyNx5l7gkLj7iiYDwZjsRMuVx8mbCcz8jvPb3wfkZUZQeOj7
bK40hpXNzUwOdJ3p74bPIgvS02aNPBBSND67iHSRYOEebS3vN/J/ztFrBqWHSay5m+F/6h0+F9y6
zL+rfHLAM9ZylBF58cLqXXroGdVuw3n/IBEUMkcNEDrNOUm/ezeK9z2P0dm87HBk7oWj/6/a1pp1
U96BC4VZ/ll+0BMmjXwTXfw1qBs205XVXl01jWsKNwKprEPVX7hLmhOW8QuV4M6Dq5SFW8R+k7DP
KLUohbjBfKjp+LogMY0qN2UXl2NH+Sdogp4vhQoxda+2jgrei9XZJGSvDlA4msdd9TRSjImzzQqn
gVdzYbsk5v6ry68vOQqGGvraDLfmDDj3BH6u14+RTaoJRB3m2LO/EbvGR15EKdyyONlgN1AKNPRH
qZUq9ThI9xQGVexsn+ytfDfvXywtDdHUhKRojtRDht3AfyGFUomCDYK6+qXOkFTi4+mZJAN0WnD7
ZDQ3qfQMVsOjYSPtb+Rwh29iKb97YDaqKSGL4maRebIYCX02ENL0fkOd579ptU4cUz5QoxIIwi3H
musERUpFtdvW3IZpNJm/QszZwfKQZplXndxdObhP137lMBuC1BqxSEBcd0u9GxPDY+h9zCP4SFN1
IZ7VexntkWrE2SO7lV4NYc+2O/avVTytEe/OqMixH0Mpu32+W2eP3FjYj8D6l9HErp28APOL3e5a
4L+lxoGO9qD6P8V3zPUuK/0jH4SpFW/PDFG7TKBw81dy3tZMaJmIcudaXxd1ktoyqQOZkXB/JBYQ
VYvNG94lverFqu8ODogEV9H5bCtSIpu/o6ngDWU2i56WF9zQDSetvYe58upquMdSlG1Zbbbqw3/R
F4GXSY8ZRW/bBwVJ2VUQ3oLEZxcc+vX5XN3fElcO+5aNRiQ3Oog+HyVE4J6f+ASNwPARY+1CY868
r1TjCZQUDCdER21qR5FuzgQ2Ozner/Qc84CAnoeHKOsdZ4zbRgFMA6Gc7Htu6ACUWEJZzAOB0/Go
Q2eaztsk/v433nHc6axWvrcW9wil7JQNb6zVVAJM9mOYWRP2OgTEiBof58YY3r9j4/165qHmw8ic
zdBD+47NSe3UwacrOeSNkUhcxim8vScA/dWkNax0/6QVnSZsrar3aj/QwGWxiodSH6zWFOvFqOyA
QFisx+ChNpa1lvNY4W8el5JNkmu9azWGaVzv6HTtykjnaSqLdcClhaX6YwdcQMqmwpFUQNTEQvYo
3VCEZlpqvF8isWzFN+F+BlUOLlGCQk9+Wa4/QN1pun9gMgh+yyrSKkzhTrbsCKMCiQzd6xv6rVhO
F0qlCmZBlUVAllepEMu6MpY+jLFr9xS9nlVetuzcpcPBZhuU3wyzrYprbNJH9zwibpWSxPkAJcrx
CSPo2phllmwSFoRn6qwrEUNpVYI9X792DAcxGcZYjX+i1sWD2kis+ChN/bK7fHRe28VbhFggzm+E
+4B9ndjH/6Wn69C5Ir8ZWTv2qzqQK1JL6L/v1UaQ8m+GBVxfCiLM1AdPoxmZ20GT4oYGavqhtUDO
l8mliOZNuB6+cnoQNHGg9PKG4uUK57fFEFdOICRUIIlp2WklzpLGQ+k9nHzDdEo1hzLLrr70CAkl
QObkH0um/yt5lT9REbaJgY3WoEMU4Ox2gCwHKebZcJKdtERiSgcdK4E5UiGW0/TJFNQyL/gdTpnw
/Gklv5IliBb5HZugMtoCA/cf0IkMj4AR5ejCXtbopFHAXM3KYHBVy+VGGmSDUtpG2cseqFPVadMI
EMDYCCKbgNKknL98yZe+xFvyv9tnYh4JlKZ6ogKnCeMGDxqd6ub46nCwqmGyWrkFB8GcbMJ7ktTC
G0DKVFjUneyXTwYqnJWNzlWdoGZe4CBzGHeIv9y1zYEBF3ujoYdAl+NR63Wp0xViJd+qIXFhLbx9
D6B7tS7xsHRH84EbLQf1uwMg5YnbgH4T6hTCOgv4+9L0e36jAccpFWNR6uufWyRpL8oPROHi3c9e
7CPSwpr6ZRDC8tGv1DATZnssMmrrWpi9SFfphmRT4lUUWDMaRyXPM7TKSLTCSnYpGf7hOIpS8JBX
oqObnMmmRxI8CU8oNBczqBeudAP7JvUBOGh6wl/vxCmWIpdcZmCIYkhU1XWQKsGqJAje+1jNkaR4
bDHxvqvPeTcuu3phhlWqYrjDMhKDUGJkQsTwfBcjQ2Ip7z/aunyMb97LbIrEOrzQgbDhkRCjlskl
loK8tTDAGoSXBZzsCAQ4vq11mQsrIQgsK6mbmtl4q0fkQKb3tCHi/OvA9caeVoK1qoRhqywJu2tT
zysp2iVBcKHN6UO+UTlIGkomYs9XE6GpHWdmzeZ1OtSMFzuKmKbd3W5uX2kPoWuIZG5tAQXMVSFV
ETneuLSI9oaMemSgwncCzZ/6EpWY3tEoum/FzeIxs+cL2ijgn2xrlxi3B9hZCInFgf6iutfrIaXD
xlGO+hVTjjxivE3GA/yhF2euYBmkwiddkwukPGZ1+kJMzKUpVqP60TDeKqDeQmRSW0ndjP3G1tQt
kffKDo5JcHOpb4ODMTeuXg05LvT2IBqTxnoeXbLNFMBj7hC7slFaDXS534QrVhI2iX921Ec7ZXTZ
PinnnEc2UR8cfhC/JsQz9ABqmI73Vol1UvIIGps+Y5nRqhXTemo25F+eNPcBqfFWaYQ1gxRlRA+W
s7dRQkUKW2CF2LnaBWKSnqQh+dPJcHYKaqanvaAL3Ie3jf6deDQEiIH5Zy2l3Mc0yB8hK63hRL3U
zvKrRLWbf4/5jLtBbOkn8syC1wlllOhEu5ZxOx7d/0fGPDZLhwRKFLEEU6pTtIMMV7u9Mmti7k/U
fPP7syyP/WJWIHqwLMCcxFMnSR9r1CloJqKXvQW7lxv5NLRS53JWRzbOE65UrGYNebdjhcQa8vl9
tc/0in4QyY3mKnsQFGFfvaO26ucUFJZMPwkvRPfjLVSzWgPjatlCxUnLAX6TsKXlqJz63DKHV23p
vHghNntR+1pTWWQJZR73C/DhHdAjGnMwCIlyxA3yDzxfFKHrn4YYwylmZwOKtS+1e2XGbpjEYjX6
QaDB/DWGw9O7TTUuK6EmiA+LaaO71uqK/ezdxC0E3dfiDs8MQKr316ifekZYVujkukOx/PkDSmCu
k7IWtLgiwc/UJc+tBUc25XseSdYiJOLN+XhL4EXf5fPmFRaj540v1wwhEwFmVxbdez/c7EYd4i6U
dS0e3mmYJ2PM4M3pWsdqolg5Iw7fHVbI3A3cbBIqOKdEk78lOPR9ViQqzsipF4GwSCwTZqnMDlNx
i0Jk+GOeFVeyhKKkcyHq+ma2q/Ab162ShABiECItHgODmiYlxer7s/LiC++/UfCVKscTvEYdIS3h
FmQeBaMyrKmYMsrMTG4OgyjlldT+yw+lUQ6zbkMeNc/e7ZJuDCeykBgFphCET6w+ks7p3cIT2uF+
ZgXhRJBkirZFDbVdO0T5aspD0B9eLIheyMK96XJLfHsWEKgbg1n7WvTuIxDnI9273CpqnvPGG+hE
PYs+CGLNvVHUqU9Xxgy2eQJXxM7cuF5M2xWHIPY9Zd/Zy2/gRarORQ2qo+IJGZMesMnXcpw5aRVh
oKSot0IBEtcJQLjTyHyym3w9HCQ4JH1r0fPeFTDRED5ZOCF6rKpKpnfBJ9ZeavwbXhWgp/jpLZDB
LdIfT8dBsATH0+y8lA+Z3oEwFbo2bktIslYvYoJM+fNUpd+ALAUEdd60AH+BlpA1tjFt+rrl9dWE
iefqDGHgl84pamUuOJXutYEz1B3TblQzEUpryjGcpqIK3S+TiTw3puo9RRrLH4+V7uEFbr59Zuws
PnCEUh8q5DUWLwG3SgVXgFCnjIAcRA2hUO/hLxm80V7Xgxl8IFBJvSPPhX4asxqgRNikq19eitDl
jlMVoD8ZtVr0iU0RtZb1WiJVGMZZNCADuQg+T7S5vz0SwO/fOYPhNAZz8iVYRGQy6RF7JbAhssRQ
AIbFFwSDqZ5I6ojDf5V/HBh7q0s4007JnwIsANgJLw/Fi52D02yVwnwavdvgLOZdewZnqTuEDiTL
HyyCS14JL97boxt3Bm1chz2pDSdiuUu8OZeCojt6OjpkM0b8A2KB5rI/isrAQgiP2XO+mhQRHVp4
tK3BfDwZ69h0GU5VuLeIh4Wx52m8GT/PkDf2c+3s7xYVKIZ7RRsJP1qpNFEdqhgYXw1Y6n4iMpyZ
EO89hZos4aKA0BH7Xj8UcxzpEtPoGlzImxKzcx6XSgfsM5G2yteOgroR2NWj5y5e2B94XTPeLJhH
ATZPzb5G9xOhACH5pa+spAfwXpERAanHmyN/uFHv6NBQpJC/c/+bmTe9Jc1c2SAQAo2wIxirzJiO
iPYpMNAI1fB+rWILJnU7iF6C290lWgzkJRcKmKQbI4ucr/pkuvXUVM+xSNuf3K3wlrYf2LgILbtj
xJvYUWnvpEVvF54t7GmA93QqsxzMNSx5yDXC4VXydBUNi5kf9inVjt6k6ZDakUhK1yaiFjzR0Ogf
x1m0RKAV+6kjNwXBSqlVN84y2YqZF31/6cuMqYWyw2ZPxX9x8kfOj2DWFXSxSGwwZ+4Do5cv/2N2
nQGExY4v8pBvIYvtr4izb/rTbFG0++o14Kvk33ODQSzf6X31lD/9rNA34F3MViHljdVAbYdC/UlW
16cd8OYgXbSybtx79t+YJP2G5bU/DG6mhaycyLlc4TvFaU2Uh4jcsaDmFKrz9mumtBvtaJb7hM2K
UFTcNWsYCcjlc64SnmBn21F3mokyZOCvMDXSkY5amKhQZ8U7sLdOtqImR+sSYTNORI9m/BZD1nA+
rlcArwn6RKYR0VdxbCHkFnvYP3wtEi+ek5UgaK5klElCgL6zTxpmY5TntjYemP1x+HCSa8DukuGL
hJ+ykOulI/Wi3x1/RLEYePmR1zf5u5CEa3mtawR9xPndXFmvUATItoImVE968ad4kFlSr5ocoQQH
YPkyxll1rvbze/LxJMaR6rVETdzzXa25/v9lRFczllFqBwtraSN2cTLxpoU3JwxFIKrWZWGsNLUL
mztgaTGhJRZzB2oJrdzO5IQJGksaxQQ3JgddMMasuGQV5mPv6jg2qN81srQHLkdXv13HJMfBYIfC
X8j6pQWnVGm+LXi2RB4L6Ih0f46wO2ZQii+i+C1I8ICpV6XinHJZt+wfzUMgz0zkqmdc01EW8Cx1
ri11R2x0iPlPxm4lOoRo2hz0dugMWHaG0VUcBh8hdVOQoszRiKlR4HbXEe7gGwvN7obqpmnBPaDi
ae69BoaYtXWAIJkwckw8/keIj9DRhLJ5Lj9XD9oZhs5C/KVX5XjSPD9C78gRk6JSlnGYeWV/tOoP
La3WGHnqnPBQ5YxooW6ygPyOLE+jP/K0nYRi1Funj/k8IgO5ALW0Nj8butbp9W/pkrnHDqIAoZi3
VVMZUTxMY00YrOv84KvsEdlQdhTohb2KSEoMbBEinCMbNp56ugeN8h4Kb0KHwer4EdkwBcYSc+EE
y0acMddz1WkjHiWbt1B64uJNKJz8ALNwHKMHg8Q8n4iHs0ESg0peGW/pxsoUEh91wV/9YnkqgZ5t
QeilMZn5CFx6rBlUc7Bs0WrkWaU3D2fyUomTXeJKn95h3wQ0d1qgzfLEl88EnnnhTGLwMOWF2xh1
KSI9SaM2GvD8hmodw6TA1q4DxjCxiMTYFe5CFRB0FF6EqG95e9se0F/W6jma8j6dh2UCthJZnzd6
hu/9MihnGnpU+QfzhkFWZvd+ZIWPrPdOqrmW0TNbHpFuZmBC3LpoVlegHfpWeaBN43Vf/umSWEbG
Ltx0cVC2DIPbOB+cBzejogBTLQaQA+RHOO+Jyv2aikZ4U1tmNCfrV+33uzUCj+amjlxCi6x8rpqI
hVYYPy6Nv/T3wh7Qa44N30xfinwyL4ra2MEeMO28Zqm5NQlJd9a+6xvcJ7QWyEUulfKCLR60vDD8
N6BpEW8UFaPl7CidE5hAGBu5kSqD08wS7/rysf9KfWEeAVlwf5z4akM1DgCzc2XmMnV2c4yE+hGm
zyjHlIfw1r/x0TR+njaY6/mTKiCEurWlGSLhkNPP5P0aJtl8SwnEJ+4CyR5L7v96T1MwQS1B/dOw
cRHRxUzuNGThlXrKKxI3O6sOosmT1Odu/ea2DtDW9KyOLLcZVerbtN1KTVJg0bR1IIXVgChoh3xT
v982lb7O34Xd5+DILAoJEm+lRVlRQR4+mDSRXIg8fugyYD68ZsAcBhpADUf4CLiZU+uMUJU3yZnP
+KiqCTtOrxceq1UQziaSez4NmEt/b4c9G2gZlcFcVGzWM++6qGWG2Bfis4BxnvJ1Uxe/1YTy8/34
v4T0E8rDT5jbc0t2+IwC4R+3fuQrEpU8fe5AgaB1MXrzX16u+DTQN06LffCl7TvXQmRcgw7D94nT
3kZ6mLMxObwdE2ABqvB6lVukwb7T5+l1QxY0fEFoXqImEu+W8GTHLHCWVfXC/TeijQY+C9c+Qu1r
HlVY0nhs33IozyAeB4ajn6H6lL5n4VA8dYNbZAXS0NXUA9sc5bbmNT6hb6fi6ojQc7QeNuF5pmRa
NElaZyTvt/f39Oz9XJyWFkR4BT5coeUfUEq+2On/qov2qzEbp5j+6IoS6p5T0aNCD/pIAdrKnnnf
5iQd/XKwcT7RM0dILFmeyWOYEMweOFO1OlWhGJrIxsZ3FzC5EwvS8bNpxRDuPf1nsKkwsWCUUJo5
2hGF9fnUGtadUdoZ8K7mbVu1j/M5wvnJLJujAoXAIFRlOQ6W4CLFE3eRrIJ5Vz5l4XgyBbejeTpU
xp14L2C6Y9z61AmJddIA98B2lnLUnO1VuAnNmOnVt38pIDt/ko3MtxqHuOmOUrfKsOb7ZFrYFfrA
HhZzFl4oOPx2V5vKKzAgIg/o4pTRrGCOVmmK1Cf7WzDmRxh+dql1EFUdOh3tswwF9911B6i1L+0u
qK7/NirOXcj8fk8w+WcEglKbCcuFaiRf7Yq0hC/0d5WVFF4801EMkJqIKEdA7gnNxZVkE13JOnx+
IubF8S1ihZ8SD6CTw9ZJhHnQQmB9xZHfceH3+jDTVKcSOWYntngwAlCI99h6CKvdpo8rh6MiPOEz
A+DyOndc6RiA8PHRW89WkTt+rd2elOKBQHWnkPbKmhe3V/NFRLa17XQKfk7TS5MHPKZj/vYKSjxU
ABsvwBkwDPpL2H0c/Uojxqh27Eo1+Udmgk4RDw8AcyFn4JnDObXv+Hs6JPtaMZ+gf8hrmMC8ACgZ
l/SK568jHfcv+VNIJGveUZNqc5JMDWdODPJu6M/ENr21ui0Ci2LEZ9sm3LCpYseUUrxBOQjuAa3L
FqxeKE0l6CG7cPmLIYG4NCcepcraHfzh1hPGwjo051yCpAqOUIFQ/rTh5bfCPZIcfPFMVTUyH6Z7
JPtOBbCtWGpeD7RfA4FfkP7pBmeoVCcsh0zelyEgE1UhsnUnkXYW1XRZOboWFxX/Kw6aL6DLCFr8
PK+NY998iPGGLZjzR1QEHsAr1ew8Tk7ZQkyNOLQRtP5vOsk0SpHxAlWRk/TW7lKdmM+LjfK/H0xQ
Re+JZygIoXF+3GpE4MOe8LnHmZWx/iaM0NG6GYT4L7EvTLFUY08MWl/1luPao0PcbYVIkhpMn1JR
R2hURmE3+R4CGr5CY+7Jzi4LRo5BYzAB+xqT3eq5zr/N31YMXu/3IMU8e1mM3o/SngT/XLXtaGyS
y/3SRmTsWTtVcMle46JCH2ZVcODiqplC9QtcWm77JFkK6wxk5cxTRHPcCtK9ecqRVI5V+wXGmPwH
e6JDU5e93l++S4R20H1qnQI/SKr4Fq7NQDtcKaBF/pQHV5MX4nGOzCf0NoOTSX4KoskunQxM4jtF
av54qCGL3dX1vhJWkj/XLvaZqbFvxYcETLOdlunzl2r0NO7Ehu6DPliLyYXMl/5bkzKfAImEbV1t
q1rWuetLax40egA7YGeyVWMzPPYWwgM7NuWF4JvTSB0taxHVqH7ayB0Dxprn3Lqg5Q9mR4+VbrwX
Q5WuPtw/oBpn/4KdlFsXqanHgscPtXvieA6MYmcwcJv60yzWZ3tJFCuRwVydkADLlVsu30CGXs6M
MKvQCPmsAmG/umcw/MsHbxYRLV4qVgzZMUOHrH0ng2bldh2/N5QmCRlUujq2a6Tkwky7OxkK5Tug
luBUBT0Wg0MJ1UbnQ9biOvUj7C6aEqs53UrZ7IX7L7Iwefust5cZnLmd1SWf6ldi2PmWBamClDkk
t4M/OvHz1gb9E+vtfX8fh3NIBboVxM71mca14dxT7uQ53bFeOgEDtsSVD0AXFtVpBOkg2+8koOYi
TCFvkwMKDO7DqXPY0QZsBze97M3xkPKQQ9UEdU5QyXxiCNbSiKwqQVtpNs6O9Cs1BdzLHEYB+gB2
4n/eMz5C7PRcYEMpmec8kP7QXPiC9NNNfpXuZfVMWE0L0iHBBeGkCBDnO8KX/+q4hDSWcq12rbg6
NRRJwtxMe7+iMh1evSjDAxXdtBqqF3mtsBJFUCtAbzW753yPe4K3QrkQNZRz8NmOAMUcGpzYs/iR
rjwtf1snmoDE8BVRYiQushRUW8nFS7KgeRRIeHPsVlW9q79B1DZsCkc7WCiKCB1scYPe+HH96FI5
rf7y9nyQh9TG038npBjwMzaT5H01Wp30PvRGea8B/gnhzBAmRVgD1ioWmAJalDYkBOCUDtl+ydl4
c4XMZmT1seOzi1/Kxmf9E62WcdfMBjhAQZ+JEmpuIb40snCtYptM8bZPM0xS9Goe92GkPkvMVkQB
yl74DP3Q2Rfs4x8G8konAFO/0orEfGPoX3LMccWQnQWFUMrIMJhbJyfbksTVUyKhqwvQ7sNotq4W
/G1fDVKagmCQEhYakgX75+tgqW6hcMAErKpdhD2lHAVNEXXWnu9joF0Tm95g4MgUMG6HevTqaBDm
H7kk/Cu8IIVOLWiYBR2C+WrrBSwSXnzXMMWkSw9waArDbJ+bxjW4zNWAqwqxtIah+nKCJuGtrnvT
XUajmrkZmFaBq79GHnQOrQu5ugEaVgTlkkQcqGupKaboLT2VkldNEMH2cHt5clJLba1WJiZsCdxl
m0U2kR4J66QuzF9jVFIS6xLrP9R9i7yQP7evkvsLsAmZmM1cwJ7is+dn4I4G4ZD3STT3ZvIq/ifd
bC3IdRjeWfAATH2sLsc2La41+oAS9neISO39gvbZpRNG7AUvJOCrMpLaav+drcVTcwHt9aDVTyO7
eLj43wiFUf3lobEd8K5QvgwpSLCHzAOZLEMRKvVeXH1uHcU4eGQzPH3QvfEZ1IDL+8n/wJyPjaBk
fAs71QccjK4D5XrbpzQW3wb6PPq1DIivdE7AixSCU6B141UiLsLQTPFkOqzQDhOs1UMaat9O3U5N
1djXqGe5jpy962vgE8krEpUcE/wHgycOPvUtBLBYwga2ASrFE9xqYDle9ToWDz1WDaJEmn7TbNiB
8fX47EUv4JMka0HeL4diR3XQhzNwqewEodRNYAjvljkMfqJpsUZqwyBC7sJLT0lI6dW9QfgSYAx4
MqCHc2Wn++WN7YWAofn1xEF3R+eW1+/J1kD4+P8fbzYuvbd9RZmZo8SiPuD+c4vSQDQFhXop5hjT
hx5hQSA9bNz74IJVI4kkJUBocrF588OVDtG9YGUinnhRDNcAqYgKniDUYeQkMUBSYRViZlQO4PRs
VS4RuOzGMxy/cKkyweuuerMLrDxvqdNlaXWNw6WAcm/il+0DT+xWU0et8yhQYalgBZmgQASAd3Wr
pYg4NJtBo/5xQvfPtIMeb+e07QKWO72k7ei+uxZQFL6BYjJdpFscHilWfUjRDX1khz69xWqXWGgK
3LMGPigKp+tgzTcnkm5+futyGf771u12HitNT5KMCeVK/YJjl0M6ehT432gPrrnwxGjGE9Caqedb
Wjtk1VCyZlK+5ja6lmpagzohQfYVPflvIL0FompxlZJ68uNrnJL7RJ+0Nj88AcfxVn5I5r9OWXlC
NQP7hhUvjTcol8j79gPeTQ8RYT1zSSi8FQzmx7X3mBr9JdapasbLFceU7JIWiKRsp3jpZWHtM6PC
WasuwCgmbrWel+IdmGGKtrwt2gJjKrNq40z9OuyucK9/zQr5XwgxhKWvbKlIUOOg1r8YKyM+Fiap
yf000a+Z4WF2IEiKzg4+SyIEJFfzAVEjEUbKalcUuCJUSvhjBwnS7m52auu5V7lowsTUNB/TONBm
L5eniTqf/PLOfXj26mZNvf7esfyZVXXCbko0bywy9ZM50u0wcCCxnM260fodRE0qy6U1XfP23dNN
dX2qYysUifEbVVA5Z/s19jWQBrwHRaa+Dxe92f8RXn/AyP8GoHRquTEbgEleMyTSyrPBvPd9TojV
dwZ6cEj/06qjWSoo3m8LQJMTaXNZyuoOudoUeu96D/5klYKnRNhcU8Xg5u27PVeeqWy3mVa7zgqQ
+j2qfyPo/zz0muIHXeGpiFgqIczcja7OAGTFGk1q/YvEu6vn8s2LQ4hWKqjEsWId2iled2TGVo1/
2ip38iFuva5CLKeWIufleL/qfk81tRkuabbO90odP1GRLx7FBk+e2gZ+kqVpHWkzoKSIZXxZ0xfq
NPmz+hTRzL7tcF1kXY+Hvb6yxGAUL/WL4FnqSfZi3myJpYlszrkhYAaKpZdwBOQDOrakoHUUmZeM
7yTr3bASylwI+2Wi4gMidMD0Z+N/LMEsA5ctTOlGp0xzzLDW0trUr0ETS0tKga7VOjFDDul5gOM8
XqSjSV+ZkvorcHKKRteIUTrnPsxWrvzfaUzcg5WsxiUNT2/Mzadq4N6LGNxY08DKdpZnLcCFiJAf
LH9Tk73nmtI8MYHo2HFA//6yDXaQDJSIHKWiLJaySYV/FflAhDkq/G2YRK+nWrIb55cgcg9M8hPW
PkEmNBSzXDr+NpK4yJBZL3mD+fZ3VmwFFEUdyEmHgeV0GMlaze6nxLyfOVBkngcEsa5OPjaW4XeH
Ba1N9rv4ySgHfVb/wnWeOO9vnFr4GlL+4NSvWXdu+HBEneGN7ncnXDHIFU6lYJojpHWBrCr2XArF
mnDa03XKmKkWWsy5Ufx4kxd68XCHi9ZM6KK5HmiBY2uQgi0Ey4qzi/Unb+lUUh7uKDuD/mbAP/sY
3ijUcL1yl2pmFvBS24dX8f+iRu/bVtImioOByeEYPeq/1RXkYL1m/ZWZfuisc2FAoI5UoA9D+nKT
tV+dYBQhJZB6m9wP+IIb8YUIoEIZrP3cV/Q69klXEUuBI/Jzxx1Aof2VDt6IKaB1KIq3TxXLoyKl
rNET/w6REpjMK59206+htYeewbwyPNNmLE9HK4YGvBCU/sxfMh9M1VduVG62KXapqFnZ5YCF9eLj
5RHfT3VBOJLVIYL7ceVnJNP19moEavwrJ6sYOXYuPLrsmN2wIts02qk/E65Al7Gv5MF6ul68wZvX
mqAEuDTAV2DCNxoZELpJZPYl6sqFOKyAkSsj4MeGDo+9O/X7ECNCM7ZqlFwNcrkXHjCGscCj+Yu5
idIM65WIjYhwxgySpwNeEpYZWek4WSE8p1WCv/XvQiJH2afPYWPmosWYXS5Y8ld5H+rzvokB4QmW
OmSilMNmZs+kSCklyBCl8S707bzAOmI7GVeQS/WSRy0rVDnmZUn4LTDpBryvV33KFrLfA9IhTocc
lMCRxZMVTKdBt63KJpvPaJb1RBIYO4kJ56IcObxzP5V5vGux4sDC7j8Ks35zw++aRoVsJG5Ye9oN
0WKz/Gsmh9QMaSsJQ29omqCDBAkyOdOIYje73523Kc7n3SyzXIzB7ZVDlAP3zX0hbMGHBMSoxZX6
aqXfxXCRyPiw+DLT0jftpGIhxLY0JlHffajJ80+bNiznf+88Fhj8Fn6YXN3sIiF05fYTZB7hLeXt
uJAGTPHYDAG2r3F6cvzZOp0cphd3x9M+KYf8R69/ZSDyoU8cb8zuyzK33ELZPfW0/6tW9OBZQl0u
V2inerJSo3VMaBF9FvJkTIW6NGC+x/fvw7qBbAVgYF8+4X3X/SlLZbmlEyCWVG1oW9nJx82rQbEG
OBoO+JekJv3+/H0ED4eaYJn/Ah6nnKCy03ZEmWbJngcT170W27vg4drhmEIjq6Q6IOLyVS7kftAH
bhBsYPLAWsk2lYOXYOlv2fdfqvT+lK+l2lS64+qin9yCOot0QTdZQguPW8L8vddNLgqrx4ar7r/d
LqrwC/qTsCk08ddTqU3/qrCIRMEaYE2csXmwUqHzEysKoVHmwLTFScG6SrHRh0bWgBN/yN4iN9qJ
JwA6Dwv3ueF2rCuiFSfSPaWk8MiWGf29ZxcFN95J+VagiQzR00RaaiJTA1x30qkhaDqjqbj+B+iD
LYDlib+wVzo77nJIYW5kPkoolCqCsS7FP/zFKjcnhOCkWZ8YkhYV4Mu8ccBm7Aeu/vW3Kb++r3gi
9NNnniLzD4/mUOeBW2Xqu8Xow1IE82EhSrMzGSdsRu0KWvbFbtRQt5Y5le2Qc1oDQLeuJ1M2+Hwg
C1ZgORuJzbrPCYp8hGpjg6HymZ4LoTA3aAUjYQOAa03t5WiIknUXuEZRaS8d/Drvc6kP2h9AlBY0
z1OJvlpAg67OjHDhd/6AXN00JlRGK4xVzrmtQSH7J1qtbtOIr9WwwWrMHHbFR7UEs5Wfdq2yif7n
AO8h4WBhB4xrjMhHhX3mw3/5RHISaSdfqEVNTtPlCtVDveS4HUfdXLr8/JuBXBBjE5WXsGFhoTGs
YHw5JSXSjTHoARAWITLhqe9ubGfsou71yD5VXmYXFksT/m1VFTB95H+FeRknDXQm2l++AwFDGN35
maDC/74iHvtYTcBej2dGTd5ECD1XgZUpbTy7nf3FhfLhv049tCNZyPDju4uUSWa2r272tvz9uWng
SEm27SqehVAVUn81QiOBngA8P9uLZplPguz7baOj5RpSJIquQeUCeXdMB5PJxMz8eLQKU2VPR84b
vy+6c5iFLhcunZds7qmQePqmlW0Ssv6/tX058b3g9cOFzDzZ9CYhWhxzznuVyF3lCLF2EcZ5Juro
IVPgjc58hjTse+/DFmXCpdlR8cCsGm1P1t6t5dD1tpAzm8KFvNJM0x/pT2+QpDvJZxSGRCt327Jp
GljXiQnBU9li18520d+793J5uZ+l2MGX37md51Z0igA4NmoRogGI43/eM205EZsjiPfx2n1jgMsn
kd8AmW92X+dNZ/M1mWv7j1vzWowOgLyr8TgspCHicFBQ+rLxyzhWW5g9JQ4KceejKgCB/7pcXOeq
Kt2hrv3g3joFj4dqTQC92G5wi5NWa6MXkIyzUPsIG2C/1iViBzDIKh7A4/hDYY81+rLQm7TA2rxC
kU2NhSBmJYvF/dYg2oJVrSQvf/30jX5ytTq6JmtgWkL6KJXPHYb1C4SGtwnUCO+6aHjZerX32Z6S
h/1qc1wrWehvkwzFuPR6pqHrwWQ9aY/fy1MOVkEBwbmUbnCQc0wvOScLK1QoEHp2bviZDdDQhJjM
H1sq24QGBGOkgtMz2/yBaBks9QoarbrMlEA6sOSA4vcpEFWqXq7kinNnjfNdt7YkPth/vEijNH9p
FC4Kj5HuiKEvJJCKUMw2hU+EPp1fhB9ZOHI45X2WQ19VyLl/klHoSNMumJlaW1acIkSSki2Om/Lp
Z45ZrnjnL/IN8WrQ12yCdbDfJNd/sa1vm1zi2Su934pm7vZuLWEcPyPHVa2YQtqdwxwQiweMVX5n
Qwm235D26mZYR1DKw4BGAs/W6ya5TwVS6Up0b3xwBEKfJvi6dh1bv/sfMFM7HOcPbOFSI9+9c8P4
HjMNsuTaBochcntHKHK/jLHO5iyg08pWRVbFSH+G2Rz3/Ui7SrnGYdCEWSccTn3w8+L7TzV6DjWc
/ig2f0ouz60B8v7k1EqwFA0ja10qB3qNy0EC3oxK7RsSQ7lQosKE1mdepqGfsGgwkT7GJD/7Gxx/
80rfM2rOq1HoYjXcV6mtcJ90VYZMyieSq5SkM4h6vsdfgDd8zyFQ2O/pEGaGDCkjV0FMIav5Layy
q2ci5qdla/TWJz2xnYqKzZ0Ax0BJI4OMpj/YJgWdbhaNRCtZZPJn+hkTh3chQB8cyIRqh1GLeq7j
JhblhVP0W9AC3XIrb7nhJJjpPiqggEBhdXcLDX2JW1q1aDkwZUwh4dKbTPxrI69U3ps65n+fcmeL
BHueNlKgo7+Z3M+yU3W9QdB9bD5kp/JLr7LjRAymyYCxA3TvgxZ8t/tqeGoSHFrNLiZ98kb/a5IX
jbZk04DMHdMQjN0zQtA8DJLVhrpIoScpWBnJP2KI0Des7e1lAJbAxambKq1Vtfte6tirJZfpJKDh
jxaggx1asalgtU35OpNLLuer9cFHKA+V/Kr5h0OgRx/a18D2jSpPpL3F2hmBoIK6HcVHdKg+HS5/
NsKyogmtv2faf769ITuHmt9qgjlqCLtscqkEATAqvOdvzBW9k0IJxn9Jhw2ey/GTlLUJZMSF9BJB
GaqSB80oiuBA6aQFp3CL8x4vAU4pkVyiv7IrvpSaBChgyX2ELAbXQ+VUPJWYfvdi71m6ai2F27HM
PSfoeiSHSh6FDUpBKPi+2QNyCfVvDWa1MF7X1ZJT8UqfhhX3a9N2vrLFTOf6Y26sDiRbbOb4DrFh
ea1fwv0zPamu7YQkOee3gpDltwqvx+LrJEz7SF7ZAPRVuAXj4dDKN5Yl3VoB0NEPqzgx8YdMz72Y
ZTYnlW47FuHvozyi0UkPhPyPTwn0yTi12sSSFlOOemw2CM9QR3DInGKVowys+60DxXX3B7rW7JE7
PiGM5IiPhDMcLGKzt3HA7n3kcJpb/reqsNIl9XV7oqn3Gj1mTF0GAWa6nAHvm+yTWrubvtizVNK+
QYJmV4z2avjRmO+A3+YvQkeoGDPHzdfXhjceMjsParyFW2w0YzU9y3fZyMGNEl9yCBqt8SKDYO2e
vJZYC4pzNpBeeYj+q46qGQRzyHD5WmKkwgIJiEtIqONOT6zlWxt4b048uzYLhmjTjpgFCdNBlv+Y
e7i8alJC4kOcpjOHOK2F4gYFP2Cjz0uZE59/CF2z69UnO0pd98UWPVDOKWcg3/+Flom0h8LIBE90
oLxrRkg4FCqjaCqXx6i6lSB6cdZl+TC60XjOuFB7HRzuspbK9uF5BrYPaEc2Cx94so2hicjhPiXp
fi7SePB51SnWCBK4V6M0NPqRQHlp60n9HHvAYh/mhDvrIppvNWsNb0LW8+qadfoj5ffWox6wJPq7
b65kUpLu1qKIUoLethZm51jbM6dNlNeX6AHnKTHSL1NZPJAKK/gSYnYxXJPj7paM1xuGfYijz70C
Ev/2WA3XLZkwIR/ca6tQ1wHjtufexkKueCsfbv223QHa2lVJLkdFX9q7LKvJkgOD65KJx0Ue4tBl
qv22jfSXv2G6rwlvtSIXAkDhn6kDYD/AI0bFQypKCSu5CyUG6DuXkmlJ95ZkrFPqG9TtJpG0ebuP
dV3jcnwCfob+1Zu5CznBClqJKj8KG/iHB6uvIVcmwmaqWjbx/CaQ50p32Nre1Z98LJwrmoNB5JeM
ZKuNiHSBf0vsMaVj2q181GhSJiqjZYhjFX7LnK6eUVAhUNELEzIolbpRuNyFpB/N1BOzt1RJaVBs
mUANpOuOSON5hzfrFZJNLEBw7c2R4sIwbOR833F6/YfTTgyXPDlHwX1kvw7tIiPsCGrD/bzaqk2x
2PbA6jCuhBzFUB5KCDu4N6ttgtnmXwXlJbP3//JzHYfPgMXb5LueD+GBHCz8SreHjaxJnqHOGqPQ
o2Afj5bMmxbICbAxPwRrZpmoRHbdftON/zbtR/2xoImZkmWpF1bo2tV8nN2rvEhewINJJ1WpMztp
AG0tnUmkD5h6+OF/xGTQOVhAnwa4i7jHjkSD8Lkkv7peDCCQ8uAciSp3UyVEIugI6v7vUPwRk9SA
dUJGRFw5R1mpHgFv7h7W4hBBre7jP/XO0Zq5cCideYjOuiVS7iA3s7WudLFzY4mQfObTn6RoutC5
NwTNryIb9WBBbKAI/2bWRkgb4sONlS64FfzpmieCjjpYs6wQoK/Tr1BPdkwUntauWohbe8VXUZWW
5IHtR/kUxUMUPtWfqnQ9pD6Q/sCcd42IoiZ4k4tSJdGrFLOFV2dAbpQYziF6O+zB3Z4m6lfSt4tp
Urzxgp251VAFrBpJU+XD6nmfakpJjNiNWqk+dUZLoQQPlREOphsy0YYFbJGk3BqmsOfSFElCPKGB
p6yx1z6p5hDqFb/LBfIZ7OL3LSEFJA37OcatjFMGls9CKtiNwy2QMuLuslAp1t2tYN8PK6lJl5un
DF73JNAgpdboaPKuJlVmiiaIU20mEsaLiuRw5q01Eqd9d1bQG5kDsOi1Dl+azMa6x5YUgrzNHu4+
NG9yqsHJGM8JZQ/wBkx3mTeU+yYRkpX/sCmOKH76rwng2GbQos3j0P8BNscAh6+DeTCrVTJFjioF
h4ecrS1uri7PmDfOUEkJe6++aVEwjcfgVkPB0jNmUP3BXlElQwemH5E/7V45PR2xL5hPKzTwSilZ
yDrPmp9JuwvJbvaYgOzkj/jC/Y7JTasCVtCJ2PBNnqD8/2iaLw3kuFhGxAPcWiQR5Myd8PtNMItu
eW8GNOtgHecf0GdBuKkfNpfTAkfoEbrwNZ5lXvAkLVfjxAzZHAxbTC2aBY6Z9PKCvSKK5nYiX24/
/BNJO+qt5mu5IBVD+0JU7V0nIa9TusnCL2lfDP8BQkER5SN66Ubg322TbPglX80fSeNxR+lF2AoA
LSRtzrZVqi/P1llxAGMf6F2BEwZPyAIzn+HNvpwqgQPogbHD5NVdHUkrvDihoNYEfM8JrtuDKkUz
JXBVZBOxzj08DFGF9t1hLAjtjSYglLYLWJIJj1dfrxgWAtZSEnzUg4n9pwivfJhR1eYTe0pSnFad
hPS5WYxasHrkVacqKSubv37958zxW/AxZ+P/0mnG2V1/SOrcaq4y+7pKY4LpxDxRmEOczP4mJVtI
BN+qrhskgY+67jELS+mCub99SN9BaeTpIHrwWyLQOF6/NPuFmZYraDB7SjnxXrw2rSOhTI6wb5rj
37LBOOSSHFxPKz96J//hmPHNLP5C5BGX3+IDGd5DrSihaPbFcwegR1QsTagSGdnk2Iooh6R0JnCR
jiCTFuhvAEWSX4f0FZNzCvEqqZ5fzWYRh6Q9yyAR4YxSf3V+0hPf4LYkvPq3mMyggCZWJfndWT6Y
nMoVrn/xztTsYvyq3JCJNJaznpWXJhayGEIEMuyu2aFyz++MotVPzMl9zsCxNBIiUYRYEVc5lSvg
KWIh681NhzRtcozAdhpSD06eXRutqLrdiTWGhP06q5m0hX2frWx0I1Xu1EsREyaRml5RuQlp3UPY
HrDPxP6pacySix46KdI2Le9X90qpUCwEcTo1YnQExwL09RxKfHAEm3ib8iSjkGGPdz/3UTgbmWAp
gz9Sa4bgvRC2ohOKDjESFfwL9uk3Pi82Quy47c+pWw0lxkRVdaVw1Qr4J29YzE8r5/2ZGfVn6RSn
5NKDT98WfTHYTkhdHESPBhm/kI0QUO4xLF6UzBGL/FJnRL4AfEMabbm45+/Gb0EorjGwdf71PcKC
BMRavxrqUMkOgJaF5qX/WaWexUzQwIbt2xxcB6eoSSn7OJRH9lvLQvV/YlvvlgwWd70fFrVGnUsZ
eRTOfT/T3BIyAA20FCmhvR9ODZyZ/Vvr5inKOQKx3mDdGxafRahRcMjdYMqBAZ8b2OP63EAw2X/L
iJgaObuG50rRl81wilq/Qn9+ugjE91rLxyy5GYL8jW1dWAq8WT+dKkurAxPj64F3uHc2tV9zW6FW
1eWkgwpiWmbd0sL8jVYEMedJsS7m3O8Cz5sGls+TWIVAP5lJUFFNzednJjavA/wskNb0tUcBr5BV
ejQfTNne5z2ejmm3pa/lBh0uqlA5jVjAnBxFeNVkn8anfh7MVitPWZ9NoDCg5629gwvNRjpCJAxo
chsSi/Sxr7l3WAKVddVMoOE4IVZFAo+EQZYnv8YcJPDdjenQ8qbt4zfN7zIJYLfBxfFSTbc8CG19
hV4ecnDV8q5wyDd5+6uInJ26P4c76X5iN06MSGlz/mODVgRZUsCMQ0BrgNIRMoWWg6BYrk6FIyRW
k3UdZ/pWjDT9qHDEugh1hhZuTQ0wlfr8v5V4U9bhJedR8HZGtfnd1hMUOyrcD2bgN351IAcUouaF
BNKt6uP82God5lmKFr6QS01TwSZvAuraaqSR2Gj6l3zicPHvWEqd6boldsmpwK64MzS4NzH/nOdK
XtypWcokTSFCCJwCY9TEQnmntihPG/HzgZVuOlS4ux5joFPSO8ingvlleT1YlMHa/FlsGDF6AIvv
zcK0asVXHMpmNfiq+Gz6HJjlCQNysJQHxh8GabOBf+LXnK2Z1vNgRWKmFyabgF9LxxQdXPxsYYLL
VpBc2/ESPEAAnPmwD+drnPO52pHw/U7Wc+rdceTlHQpK8Ey4gl2ENy2WFjxob2sSNkl/aMiR5Yy8
2a2i7Rca3F8dg8nEkQpVfFo0PfqPSM4exG5GmUga2jtQjPApzutyWL16WaHWyP+Q1XHMRICjAIZ5
gGF18SHGbWD4xa/YiQ16ZZL0Kf1e5WvTFj8bVgNxPmXxl1aM1dfLK/v/U7bCbm7pqdvye5wIfA9n
YqjVssSfGbwLmrg1THrUHO7+/oIHLwM1rUPDaZlyFLLcuEWS3ywudW9XhC+7CkRiZIgv9j7m0lVF
1DoTEz0IzzxRUBw6OwHZWqJAP3IuzAqtgJzCt5Jm26351ydDia04uqi3UhOrJiynPisNXnmQy6Ch
Gyfw1+ghYJ608HQpfWS8H3aXhzIg9WSl1jHD5JpDG61lwmmvBIkCWRbQgUYfcikPFo3htxVK5fFa
3rG7fN38YI7CmUb3e6vjmwngb9Hb++BP4AtfAVXL87KpGl0f2ZIzTshP0Hzs/42DCkXw5axgBCzQ
yyoqwMJosQuBlzkDbIjaC0M2KIuUOOoS2H6ZFCmotX1LN5fc6Qb7Fhjz2nLkDfY8dZOJTdAGK118
qCQSB/O3rZCeK38w5L9tLwjOZcUkATPX+auUkwdIFTNaDjh0U/uo+jIWU0wzsQXPVZNsS9UIUYS5
RZ5POaem6oTexPyhWIquLahhQj2mDXek95q+k2KsUAcSj/Uob9JOsC4E9N0sfLVz3KW+R34xF1Sh
iSR3A3t0vCPnkWBJnTC4D/P5vmlECICR6ilvufOK79qhuCc1wQgMkHVawPqq3Mtq1bCv1gLFd2Uv
5NQ3rA7j6+bz3SKOPhRgCliWV+tdpSul2wlbN3KXfL7CCOqHaRCsbkG4DiTvhQ68d1DmfSayFXjp
4ed/4x/cEU4emq/sTh2SLnpXj+536U51FZitZkRrhjYNigEe+hDS/KvnrPdMsdGifTpwfr2msf7e
nh7CtxXcDhkdrU96tZDLo5VZ5kPUzpVr2Fr0KFKQCtT0k2OoZojeba05NtOTSnj0vFknPDrHDRsH
AuA9pCUZDK+hN+bDiWh2FVKjWe/0BjGFj87Fbm43KvCuzT7VeQxPUPvz/PY9dNCla4SjqIGaBTom
ioyiVY/dLEX+ZvuL7dYGQGaLKQy79nHYDvLrqb0hkzEgWy0Ei7IqVKLnn5f5HjI5akMZOv3jXreL
WU9CQx0ljjdvhN6r9B8ymBVD9qHgMNmmWyzPZkMKEk9NRF4THDLaWlYLbJyNLkHu0Bnua6XLFKCq
6FZz0C+F96wo8pfiG4CojvY6a7uvI3pQgHIHsk4eLr+YLfD2hEvHmj7MyxFsdeKhDpqTTpnnv4G9
eyjwKmRWYV6qCGqPA2BaTuLgV75np8YUZq9rCv2qjN0YY3MEzKXn3CWTTUP9T5QHrDAF3ADBSPnY
NC2istZKxxRHY/NDVrrsnBcUxMdCObxaEcXwBrp6S9tIdeekf6yRUqhloYBVkjCeJG/aB+pYeW09
i/8w/dOdujrN5uSF1bHfv1skyVfCKCv8mfynMv6tTzGbXLs6ks8qmAMNurKii9dHp6p2Qj0BPQ3C
X4g3+j7s6ocE2fJi0sPV5IUvahOIi9cYEbhhvEe9cX8hmKiY1QMBAjokZ8ox4YDdRraPThfgiWBx
pGko+Sxzx/zdSvSIMwKGM01OttZlWSiVtiO5Pmji3ZRT9c+NM0ydXjI+47wz5YJJapkv6LLow8BH
uOLDH+i/LXWdpv4K0UoYsxoIkMyqr7+qur3kUoqsqM/NX7ttw62zLhhv9gzKlPYwdJge94cLpsDn
pEckcFcfPtNVjDpPp5lt3134kLuNLOhdBytglvXXubgavjOeZ9VhnWfEJhLHqWk/5yTJFP9UsbAZ
khK9kxCC1J8GtpdGUFyNkn8l2CfVuNJDGDmQ/+VmHH3JK7dGpzjDUMnj117m7NOhYTkxUIUXPo2C
khJnSnAz6Ulhc8UuqTbFotiNIckYVFGj/Uv6cscA/oZ6AgSWv50SfvZTRGqQRdGJH0Kk7c7bKNMQ
jx7IesjfIooOHIwJA0JpLMM1wB/R6gWVnNizTKM4kN8LQNqnJ9652El0CJwXZ1orw1PO8YzGWrjm
CSwnlCF3WrcnDwCnEOhfvxOhx5U3APmTwNE1qePtfTqMggJwt7Ssb9u8jKWxuXMaIS8ZweHer2pF
bj5SHtGSRfIrDQGhR/2AH9531dwyZPCjPDYbiKE3uWZbhpoypYAx6Xz9pzgYZWXLsfK9RoER7UBy
Q8Vw86ybORstGpOgJaPPyQWmZkH6uz5g8E7EtYQb/loNiGc+LczvSA2rrubT64N4qxxt4+EaM+BL
Swk0BDn2E2SsAXb46a0A61VfkIRlXEjTNDWE4DXDhLq5sG5F8N9hxmIBkzOCpgZvblIRgNNxOD3S
N0YKiIOF6hMaSfsGuLLKvKRyNrTwdJBf/rBqFSueL53cUWo+Dx3RvtDM9R1Yq0YooH2sUIjoRoZM
R6JDGrCtuctXkcimzk8e+LrgGEQnM/eyPoWZSH77bL+IGFsIIEKC/jCAlRGLZHL0LT3s9JU8qYkk
T1qn9lP9yLrA549bH/9yByj3sDnDNEuUiCVvzBT2yua7u4Rkp5PeFTvWpBarN7qejUYVdJLCA0hV
kIhgsVAJ33/2anaEN2XenR1UJW0HIz822TSZNI509kFVDuqKSCOKAcZtVjZuL5TL4MW8Njquitx0
Z5pgOrLX3KAfh0OdM9WCcVHkvRO4jP/AhwDi3g4bYF0KkINpKGsubkc1CLpR/NCvgp9304QkGIP7
iUeCnBrFl1bvLWCu49EatgAo3m6O86+ZbD9eR5tvi7ob8O4jnA7YDmXb/ceaWQXJqkjq+JnK1ZDw
rPqJ64GCTF6pyDar+eTYFU5owwwtHmLi9ToWkR9f71Au1k7qh/W9kBdzkpeOtiiZr5WXRecXuUSF
bK5Zd6E4MyqI9h1sze+HYii75Xobpjjc4AikSmkYuBrs8SpFVHRy2f/o+P8FY9ZLXXbgoK3Dm97E
JyW7HFwJJq8dhf5EQO8CTocX8Wt1M4KyqbXtlvK//x8PI0yHLw34UDygAhMyNdi8eyYPUucuejI7
jagCKLTL3VRF8YS14oTmywoAYs+0/RZfo+ZTlln9uPr+RpDtaJlPVheQBDviLdDUFC0cj/gj23vf
09Rqc4plFiG2EGjOd/QRcT/lMAKD7hruN1lYsf6zbdvoVKj0wZWn0X6NLcX7VdPIYv+HtVQRfmZB
X4uZD/iyeLbJad3lBwYMQNqkDl4w9/RdbAJYgPB6MZ+ajHf6qMGr118fuWNnXXiQZj/hnmh1qbuV
ZUY3DtfQPVtQ1zNfMFaTze5GF95YIb7oOHX89zc43Jr2rb0Lu0QWO18vC+oX2woZAel3Z45+U4P2
vWjsKnqQaviSJSFzyq1MPaUtvwGdf5nU+LTADf1sE1mNaIRUS4CNzCUfFY0+gXEuQx7mmWVByJe4
5IJ0InyR+tnErK2pWtmb5y+s0jtskZTph9TYpafMxjIweBgsxxlK2SPJwotfmCqN59Xk/SJGJzKT
fUdR1Tsop3x7lf1wGJ90EmkpQR5uFMW416bckjcw1dfmCZe3QoKoZ0f31TuMzOzVCUT7YRd0CowP
+/rrlxexis8FBygKy8ytzEc3MIKVXNwrS1nUqkxTAMHIJ8pfPsQjCYHgnWf5xGcjxM6jt4BSuf36
g8qwFvJC102QAZm0eCLK2/bZ01qnfj7O9y+BPx960kpGLmxxbhRW/O/YpoNgsE9s/I6o3h4sqhVm
JfwUe1nPoO2O8tzCB6dB+/XInigx4OBNAq5zViEn5CZMxwmTfJu6KYvsMY4SmQEy6Y5CT7FoevpW
ml02IYURw8abcDROynHfoLNFhwehMfbap1Dtnc3r+0GrX82LtVgvAMaB22+N7l82okWbO8NRuxYv
bgrjlbsOyRQgW2HxBXdsI9Rq3my0Hu9rIGajD80U8A2QYBopUkQNsuVgxmW9FOuaukckqk7K/cTb
vSJN6HLK5QYNFOAAqOjkrFFiXNRY2v5oHpdmxVW53CVTloCNeOUP7GdP4Ay/QqaFLN1RYZvvP82Y
bHw0PPSNlmeCsgrWUENcavotVbxabXSEo98ZPMwvRpJlS9aAHl9CGdZtA8fs5ZHPvBKZYpVouBgO
xv0YFc8q9Q4EV1BqISimA7jo4QqvNdGmOqXtHCcWYvZiCKJUuMAf3pSlgByUMD5ceI5ogNbiwAFW
ziVMEVmIiJAoJbyiyQE3dLWI28B40RiuxOlCgOoNeJm/8y2kf5xYUyiA1WWV049WxA0xIcZKtNJa
p4wIb5BYEriXbuTcvPdsSyhbvKTKQPgW0YQXlhCW/diD4zwVdr4bRkGwRK4iPHyyUOGQRYRN6Tka
xtyzF+isa4NVjvktA9dh86JvA1ggUJ0ofG/SAWNf7WD4nu/0Ae+Fnn1SUEP/OjjfuGaXJ1sB9xXh
spKGsD+MOkII8Hvicvj249uqHI8hKLGbdOFdwbFZP5KCGIsAxIOgvycz7vRG5Oh4gvG4dIN6dNOv
jgUy4VsicBfCRhyXHKuJCGjwkbZciVVg8lYtTqMFxzab6eDyF86zsIZzOrEhSZwNvKiCy9Oecs+3
YJfM/CZKW7EDDEqO6VKCquVlW3VbDS7BR2GElzGE9lYa3jhvSUVONi++wxyFDsCGMZ66GaGoG5RA
MPfd7O2nNYyyWw+AIKt8yOpjtJGal/E/dlDkhFYwqmYjBoCbIlju9ANFuma5ibkCOGW+c38bUvzo
8LafDvR/rjTfYGD27rrnDhv196OdvruAsWQGPJJgz770abuNTKZHI/K3C0msz6FTtwMuxzCEHi2t
wjMg0EfocfGT7C//OwjMNzu7z5RibH5YJN/0W9cSQCje5NTLNA6yNOtBy9IKpt6db5Vl/qveujyY
gUUflT0F8vGZbffGDJiHjuW8CKAFKVJC3aNnMfOZJ10qD+1X5tKPv1kaZcb7tHBbOka+v+bgfi/x
c3J2MsvNmhukAtVmvzjhmOsWnC+h7DEFhf88asQPwByIHyJ75vCaMZenoKjbleFyZGPn5rjUiHQC
44m4yo0VSEfHlzU4r8CjR4d0EjthP6mcDhp5N5oRLl/bS59xYdS05OMmXbzblz/AgXOGcob9hPO7
mMA1jsUhh6ZJXPsT+urtuJ0q8Lmvwf4pTw01o0YQpYvzNdUGFdQf+suLdaTS+VPwmOggAVsHxpcw
KwN1Qzz90uVfHlKU6uFKux9BvAn4JOg3Fd40WC1aeGHAE521kgqzhJ67R87QESp07VUVUADThefE
sKm5PMHnfuyz1j2Dq6XL/3g9pekhHtZbwLgTU/sD5p+QZfbCrBBrr+x6vaaRuRUTGJ/n2kEawRi3
UdSRXhJ7oPk6FLFQhZFv0U+ZhQyIO+hXadoLk6WUXlwWvhGGt4D6dktqlEkYTsuHJ5mPaFuhqPei
iEACQ1xUwkO+RyTxH/R0gLBnwP4gxzcL8w+SEbZNyFb/W1bfuxHW7KrFbV5LhMwDVTC4D8OxwWSI
blGs9vV6tgsy8sA6pWL4pYKQX5btD1K9JHpUHWE0K+FOLt7Kvj0Cxfm7a1rvDLHdkGQd6DxWuShJ
rtxpcHwz8+CDY5KbSOYXVpnVhXyq9+2+oO39CUZut+k8eUlu0zZ9IXx8jxnc3bGvsb0V/8Q+jdxI
MkpRsqKqxkisHhePU4EuS8aa6sUwc2I17wm6ExlG1TlMmSzuWnFmhYcY3lZkze1vfXbh42aici/o
TE5f6K+wKxKFJyb4zoB6OIN2uHSCRBycNIb2vCnTMl9hh0e9aqq9shbTwZNsByJIuPzBebMTAEQf
64GCxG5wEmIO13AS+O87qRef0OFuWZ8ATpCx9Stuq4QdnMJodNJc2Of+HUh4wEkFhR4JSx8J9t/U
ptI6a4aBSrl2XNDpjNQLbWeJ3Rs/qQ6CTaoejzq1jg/i440zT81qUwAi3fwQmshtVftTRWhhr19L
akYclKZgIp/xtQoBq9Jl8EWss5LqmCYyEhets87HW1wL/sxoOEoSVY1QFheRBBgzG+GTXv2H6zq/
2MSE5hOgbmmwgb10gc7mD+KsiaoTpuURWealYLscdTZ93gUOlPr7hb6Y+zNjCwPX1AzIMcROSMAv
t4ZPRrZouAf6Qfrbp/QvG3MgdQt2nUCFiV/jt6VpzK6ImDndvhVYWqzcTvIj5UtyaQtLWAeafO3N
7z5ZJtmBKouqCFyIi9+b1uCQ00jJyX0t0MMPrKASt3UaNF/RKBWKE3t6vmN2LampbHyYvrVjEMn9
vUiAMLLWHgZUsbnVO0TRMhRwX7DqWTbirQ06m9b9T27At/mZeN/6dodUqyiVbeDq2EUkyqKLNcnH
Gx/hLYh98wf2minIGNhvhfSl1lgPtpoSjvBxYA3gj1MsAkt2V5W+xlh0YcApfiQ4nHoi4HHo7z8L
hAK4qCmAsD5DbUyfS7cXKSYdXWCRG/GllxbOjWvSR6NCXPNWAO+g0lvLTIgDuJhrGhCNg7A4DYBg
8/25XIHctPzU0ceZI3VtzMFd8xELA58NhabKxstD7AuHrXYuUBFIP5S5L0npna48qSXb+rkNTZ4u
8yx0ZlwihkbYbDAn2xMQQfSMVEQnPXSVIOYBz4oZ+KstUpXV0Lw/6PplYFJGVs4IrVBUzpRThKOe
abaNqxnBUA8bRapRs3/yvYou+a0utjjmwEFktEdMiGSf4mMSxJIw14QXFcRBmgiPqTeDgb5eXCTr
gzCIgKHzvw85U2r6uxDTuPXqYeltk0S4R1Xd/cCUv66AXJ5AhhCd1y4unilHI+crLIccBaazn5W9
sB/FXL77JDdevU7cilG3Z2NN7OQhiBJfm/MQL26/KSJStcSs/7nAdHuacZHBe5QESG4J8kIYYavT
n4bgauuNPThylkHS6kwKSeDUd2kwRNLTwCJHn7dUvBR5VkAs3CMhP8ZkDuybgeOIYv/cycL5ojhn
HYQDUp+SJQH/sWPk4RmPd4+6fMopSpgMHvblV2OvNPpG5jkhQkQTgaml3KFXDz3yYuDnCG+gM/Pj
M+dbLdCBNeoaCj5giP0cPG2mdas6EJyT0duYTO8Vb0dcdMOzFjR8+S2Y1P7SA2iVgbtS9DouqG/k
EJ/VkeP7rEDtIqoxCPX4rxNJdMtZRbrG0DSqnaQ/rnr8U6qHjI5yQTIc7RnhSpoeWQ1CMJul4fnb
7/Prfyu93nrwhRx0jExTh30qgTUQMiFY7uwvvezXhtXKteVnUfu73wpk5nLzTKIF+HdwJO7d2rL7
wsCUD5td/ey73mRJg1jGIyzAPhvSyg09hI6tYXLSISl2Vz6x0VJZKWvAnYhPgr4GRNCP3kzq/qzy
Fbn8dkJmAI41tFn48zSLw9U3KXXZXfHqCg/szWSliYc4Ijz/+iM2cqCt2FOP2jQw5fXLUpokbJU0
zYaMiyQoH5iwcrmT7rIl92/5jocsmZ+G4L8SckcCDaZwvfpfvHx851D7ZomQgIK41f2s9+wA9cFV
XaZWaEcHJV7osqdQXW4YAmzIJKJOEfcgAfSAq3EjvYrZukbeUlHCd6nHBJKL/7QfIjHcLf/AkQsE
G68OWjceIP15WgovtuSm9jiDfCmlkau2lTHHu83U2KStgk8RBU6xOgadE2CCenOQiDxeUI5fhW04
1h6cx4R6caQ8vtpoZyD9tshR3HjmPVj/81wsdMMUhNxWMAod9j9FTePEZyNRWLm5DgrkekOzU86r
C0IjV9rd5uafBy/mIQ8pfxr6d3iWISxemztyEv3S+JW2WTwCka0azfFxf073xFp6i4xDNmVvUzUi
TNEwpNKEbQWOeFhqwOvcAdC+kxsQNbPGnAWSoz9nR5L1ddvHETiPQpgh9oKU1aCJd4/GmTWgBQc2
jefk9rlhf8dEjiuLiRUV4lCmzJwhuCLVKCLzSE00wmDpos4Lqm3/g5wUiwi/anyaTbW3IIkFGB6B
KdqLnXl7nGW6KyJgnpf8k+AAccvJDe3AW2bxNTivH4zoJf60DMAOkPikMUl47KihkbD9BjQBVoov
jiXq/CULhZoJfr7YUj/7t9GM1Jc8oloVS0Q0DsJZIoajsN9/kWecQnDqppT8xZIPOv26k+dcA7Td
qmK9mvJ9gn9i0pG+WXTPG8gP1/7cEBVAZ6cuy8IA8T+jFexEJf6hIrpA54jUniI9b2LGpnLNlukC
m74ECpXpx+CxJk0Hw2EiHkfXQWz2lHIMo84pgp/dyiv8ErB5aNaP900B5AsWTw2THCtzzBpvEsF6
/xV7W+sOyiGsbjO5Gvl21WJmUATqL0yzEfuBtbhRgj6tnFqFSRdPLleRyM59KqL991UvSdQMD9oY
LfuOJweojwdJ4KrFNCQBnhzfHkEaZvkOqd0+fDrmeINXUSYvmLl9wsb6pghiEUdVK2/ALUBNIMxQ
Q5S/EGVmQQmHkMMiEvEwkUad/Y70wF4tcrnyV8dArSSlwt7ZX0Wv1WPRokQFOk4/ibwKAI8EqRSM
FSiiko4eVn80iJyI4wNIvqLFaYEmCwu9SxYhf9NPVQr+BRMMpqn2Yy0fSGeh0t336CWmSknUNvX6
UugfT0Va3jFzx9ssu1WDNmPVk6lc5NK/YV6lWVdZnYrl7brlEUVMAV0hb17nIp0R3xVqJRBgNW48
etZG9YQB6lEM+rGdwVR9bBGrmUEPFSGARHXnkXcNgrtsfAwPWroC01vcoyQ1DPe8IIx0eudLg5Oy
wqNY6BXAHmNh5n28DwSpFCz/DrCYa3BSFYKe7/n3ygZbYbDSn/r0jx7t71sHuFR2NbUyBDZIo/Pp
11L0alVMQyHE5oqV86Oxa392mSr4d8IQL9IRyWgDy9Qg/VuoM8olxhzGGA7ldPFy5Go6Pvci4ZZ2
ZEIaQMVvJybmifGpPAvqsMXhrHkzUniwiVw04bG8kW2u5sIUeg30fhvQ9MiJxMOXHH+YAHgdgyWv
3ArJIwGcxrDVJf10R/Qyar4QYusDQTQjKQ6pe52kIuIuKhk4jZ/VC31OUiPLJV1bEZeUlHrvdba+
XV1CSNmju9NNlPPNgZb1eLIWM5psll84M0QI/1fxEzaXq1sKDP0SdktAosVh4onlexOmhcIBSQmJ
taGZ9zpsOrc5gc0E31Myg7RIqaOOAOmAZQxvcl3bw+0Vcdt+OKg7ulTLKC8UmNcoEhqb8caEj8HC
XF7O1tFFaWjZQsyDLTt+yxRDZPPpUuQo1QIsKVCrDV9b1QE945I7LEnBFumRRwdV8MUB+lVLKRaF
6/zc08uO3PjE3W4EeujjShKi/rvkws1sV/3a9kEaqvfMQnXDdm4nzLLCkrkB0xQae1QhSW1TbXGS
sd6dERrpn+OotRdIm3OHIDxWDaKsZ4Lzpp4pwUU3ChTKMWEJfziCFurTmt2u8c4kb+d5z716/Mdv
wHQov3afRzvy+VvR16wgrBzdYip/RbaWILIuOOBdafnTwu96gH0iH4D2ZCmalQIfPhfEjEf7VNG/
RvioW4H5dU6dzSk7+A0GuUoQLpY/HmFMAr+nicwpYSZY+JmPmlpGPuEkz4NJ8hRSWYKBD43uun0y
zJxwEY6AGTRXhOzLMioalfs7zdBo1Mq57xzvDf1BhO9ZMWjq0ldIarf92shx8hcYJfwRzFd35BF7
qOOdMQkIjlWEc8t4dwmFBTvbFrLTk4C7JXMtvD8bRW32p8qnDM0t7/l408yZ1q/PDw8aOWpK8Td5
klmq/efniAQ3jC+0xXTQFpNDJs5KNYy5CCOi9c3FMLLsqTdRanUvZ8lLc4YWdXF+d5SxneXjG3+9
Ho/t0GJxKtT4i0XJvyPS1lUmA8J20rzZ/07IkaGrzdYeu4hGdFkSs7trq0LDoGAzQiqL7hCFq7AW
0l65bHGduLpdCrOYQy8MQ9LTzddkqEWaIBqF4eaD0D2Lxj/nBISFIkAxoS9bqxpeRPLZz8tXJJCH
z9ab8BQKTHc2q59NS77s5HW5NsyvL3JN/b9RSFUkxD+4OxlUCZCkYGdNw4O1ZygdH/14p2mfIGFg
816IucVic46m1tV0rCdgB/4Bt46R3DfMz2Z+Lomz/J+g8T0VFjXYUaC0SaFidekIZagYG1o5dtWr
P8UgTMJRzTPbHEwEOxzKKJU4xVmEelKZqdtSvtEFLfikmJiwjYf4pto/UypumpS6omcnuJh5DBdL
ASsQceT9v/wyXAa6SswmdtrVq8mlmIH1t6XvcEESTPT+wYXTWAW/+RRmIFjAY6KMobwxrDYHxyUr
vPqheoZahDSN/FDtsqBw/NzGCqv1D4raGJD8jpvXuZXSmB90D5gr0G2onIuSuhH2igT2Sm3uxIvb
l2vPqp/QmVLCXiqRYir6aJbLRSptMAZQQFWwzVhahNFKZD1lyfFC0/lTJpVrpluOO81KJgkUx7pA
lLDsjqYIt8Nm5w5GQOGirC/cUHQdl/3HFg7rJ6WP3NUHzitR6kWCA6pTCjyqBBDCEkgJCp7jPfJz
qmr0j0QMoC3IpmeG3xLGo+ZLr9uiE8qG+KR+LysjC9T0e+3V+CNaCgDYzZduKxJZWJpqBVaLNBbt
JQIpM1HWd2J7Ci1C2delhgidXSACpe2D7PdxxX/tNk3x8mn3xtYv4G4R8B/oLodMG76wEC1vFuMp
YUZaUyX+tudQRBqDEEheCOMUkxejOy42Lpp/tdEfQ8iPkOkrv7AUo59a0+vXLK1yGQaWmRnem8Kv
eA7yWV9uaBPIqtHsOr3d3ee2stab9ZuiJBZb6QU2R0WNZysn/l/WGCOjHREF+TOeV4ezNJaSMeoX
1CaT6/aBuVcOErJQ1pbudCMZm9SsIVLFiFpgy639rWwMErNKt/1Qrx/gkENYnEnPhf/IcmI2adzT
q4uU8OUtv1kLtNkvBCG3RQX7m/94SQWTyW48fjLQodLVqN+PzBbd5QEaDL635+p0IOOkfv4cygQx
pytcCj/oR/DlCsqU6PWWb9tvNMjBsit1nwtUjjm0jLAPvIx8DFwiaewCCWa9KPnDlcYPUyS6kr6u
n9ZtgrCKKbRqLPo6+dqt71kZHyPKR0L8RTuyZl4Wa5j3b14/24Ynw9RGHQNrEjZxwB3H8JCO8IJf
NLJNIc/eP9pzrfkq/OjzVCA/lGVFWFMkhRDi9U/hJzwavrtQBWzbvqlb2OOBKmbsIsTaLcn8OnUN
49O04ImpvL3G5tl98ltZvtMMqg8LmAp3YJSMQDDy5T311uBDsFNPB6SBnTC0IdDo8pC2mjVLbOnh
fqZAAX/CFQMlEel9yL/w1HX4q2tyHNvV/aK/bxN11h+w/MJ2VhGV1RFJ8dsZZSJwCI6hKcAAPKbu
Cgtz+AWqvOS5uhzMYznu0YP+Mf/RBIrGhLpWtSDCyJGzU/opvasDuDZL8xHszV9IvguPbhf3KX5U
puFc0NDGoUa1QoVzPoCPc40Y6+iYICbHp/OXEQ6F4nFg1K8Hta68GxnjUQD5c710DvGM5yrZkhna
AkyuQFdfmsRcKKhYGMPZNtL8xidkNh5g1jh6W9e/2WtRrK5ONxXSG2opnZF7VU8/ZG62v63OWKv/
vFLLBvBbwElsj2Zxk0glQinrtNRYVhq/SIVULWI2TTtSkhObhVtF0JWaudjqrP05Ud3TX/VuCGkp
rivNDFHAc19vO/wxInVN62ydiAZfwnSWojBY0LKg83QqGFecBBuBDm5U0Sm90uAEcHvqq8ir5FJu
t6AxxJg6i/e91swoBMSI5RXGqN17CJyFjxbvVCgIF6Dcs+R/ESrIHzgeavHeS2dhJBhhTYMkZ6IT
i4YCH44aHdW8lP1yTlAOZStNGz95lFvVQKa8OZ5wF9tZD6O+Lz0yN053ZPPeTubUXesVCHUpu7bl
CSBcxbmqFTP215WRyrtMqsCxKxkGsdTbvaZTaBFOfgDql2c7QsqyBzvDnGut9GJEKWGuDcW9g1m6
e+cO4t2efsD6ldTFduHfJm1fQAzWbH0ecg5QXkIQfwnZOKBDfRP2O+5AIVZ2CCK2pfpSgmAoEopT
tk41Pz8u81NqJmLK4xWYIseqbAFu5SrVA6Vy/ETtbQV66ySmh48lKNk2HR8E3/rGP+gwt/cpX1ml
eflMsYkedADUM0/Sg1SzQxWYHU1Fb+yXgC1ByWKBk85Ikf2eadeMl2cDyoSmZwnTNVM2zlMQ/wdU
HLzcjiGfp4xzbfiQG9l4EUSPc9sHEygDK+u5PGHFXuGKXOYC8wi4BOH9abEpcLZ4b7TCKEnvkVXk
eYHqgHpiQIQGs2fKj52eUyNJaVB/f+xtgm2UMIAFgSo08G6MyTzKtyWCMilyL8E4Wnj1jGc0Fkbw
0KKXg0MJ102w8gX4POwd22JUIb9Bz0fWFsfJ4DZqL+pbBrLppmH0BliwgokRhdt9Xx83USe/7lSm
YPVFs2G3UsmTHsldMukhDVEXQNAMXgUvFN0p/Brv+Co8MwWK+Sb9+2MK7//i/dYWu5tnKsBMoVM2
i2O9ocHcNnS1BQfoKoMjN5UlYPpLCYAxu1mtNF8iX19ZE0WRYRyQ4NHAr2a+vKzHuWS8uRYjpvf0
YeU9Irz5msx1OkL6cTJLWrQq0cPA2jg9qO2Tc7nTBUU9oQ6e1FZ2cq42XC40tY1uAR/b6MWbeCcO
K2jVMDa5VJAUTil8tfE28r6DysmpGi0cWJT2qYWyAp6V5+ctMhd4swQiYV/ss61o66Z8kuqyDa8v
3ObcCj6rY1yhqxnmdBZFshCV9J9pipoZ0thg8kAVGNvG3DiggDwXFgf61YBrc9TJZ1cqy6VLZyq3
6K23Kp/lcv9xOuuhvtSkRsEjHdOrp0SQc4lQ+P101htoHsyxzSvj5haJSqZzqsIyaYCSDycvxaK2
KomMNvk3QSajgKJFRbHFpR2sl+qgK7P/gI7rLzguFekDIILwJ7eVy3n4/+WNWkwAYYrlrPxBR5n8
KPD7D4fTmfbkvPjycFCRxg3uuqik8sk+IR48GC05IgcEoAMVKGlsGLnPVS/4c7tXnxcq8EhmD4+M
g7A+aZpIU2WnZS71TLqA2XA38DSkUY5Rp0gtHpJmOwwhkbGl0nsNwzUZnqoBrU6XbDZzABMn3WXF
/hgpKWAQzBo9nQiTsyrfhisCKvSdBO25nsWyg+8jqMOEC5PusgkTqAwWrnbRfzBO9vhLWMm1BvwQ
L6XY8jG3kndA8D90qUTjXabOLo400/tZLKr3DLKr3+S6rSZQt0O20fniUmtZ23PtFeJJzu/ByvEu
W85P2nWAswM86qMuV4I0pzUvsU8gzMKu8J7c9mihFS4kb2Tfks7uvrRolDIGvGYq3ayuego2X7KG
0SXYzPtN/BDH95c5tj80Mq+SJKs9bHBDX4xQ6a6ZT747eECtoZFdDDiNcDpWaO3v5Mp0tZD2Mkfv
NTUdCjkxC5ue2wkKkJbcW3XjQ/2KSIBX3plZapxU+QgNLzRAmR3uI3ENkx0CNh0rwyGafaoNi1wl
5PJ0t2L7/0dVaElT/hfRuKHfn/efL5KHGsKxEpVf+xj2Rt16ix5mbOQ3SmhOBcAa9p9QoklzzTKP
KU8Ca/hWOiFILGNs0kmAtBgc/uUENOMpbsapMUSF7yb5QQa8ETOEyN7Xj39alSUbEOixjZH/NVvC
zoybR58RhVz6CZkFS/88twQ5PrKNAYWh3n5q7xY9DhLhNxX9z2AYMpX5Rsa6cD95O6cFt/KtBeOB
IkGKFIwKdsS0fD2/uiQCOkHDNJ0rWGb4IazrEEpoDpuSkY27I5aWYlaIo5bzSC+LexkWzmIr1+SI
LeL30HTEgwAuEiNLcn+I6Lzq86KrVaWSE2C8edK3ScX79rew/Mbd+D/2EfyaHxD0Tp2lYV8Kxu9O
kU+dFcxkqF2VF5evQXEcROHugJ4Y2amFpwGfpzQMdhzOOJjyD6bIQCemQ8LsTnxLfA+x9KvJ/8Ma
py1QsN4mTqErsbsWAGi8wMezeZAsfgIIohThG7nLdsRc7CcMxrSW0V37q70mxqnAFuN1HQc186kS
L3NSkvPy8smR2aIFqpJk1Tn9CFeHwwxB8xzV6uGh0pIiDnLzKwDS6nizXGm39KltMGbCGAUxk9Jk
nKkf3H70E2XIwN/4xrn8qMYc7lqFGdh1XbBG3TvCiGNt8dXY9De7B/14CYDhOW8jikOKvWB1/g4d
K4rc49lnVf7LS27mCZiQ1+env+YbA3GIa4udWXtEB6sxduWvy2D3RktYHIirw7pJ/azviCC9oGjI
9gge6w58iO1pMEbGJSRq7JlsoRhrTeSMe5OAyVyhjmxov3sT7jM06yLyY0dGyHP+yaQKfA81hkXK
KvimfNZ/zszxDlv3gDXpuQtW4YyGVv9ZJugWKAG38sj2Dh/ul9GQ+FmWlpZdh4c78AjfCiUPpLSx
jEfLA9Pek4OXxuoIqnhmHwYayyH0xEqAOzk9QOIgphd7hhW+xpC6aMGsK77n40vZUa4ruT4kvxj2
Vtv1iotLlqSI5etV9l5KL6njxlFZ2r+TPy3tRU6mCTzhrA1NRZmay7rJXCw2vjN5WkNLTx6BKtyA
FxT+tN32sw/0DvjPk7G4l7/GZj8bn9ZTu2NXXiAOBfiMseFkkZYxfG/o3ru3AjV2YWO+x8MFoRhI
DmpuuA5ethjeu3oTzFoIVLiDEayX3PEbVjpaC41rotpTxBZbWQbnpuXytB0JIbXWjSS/OpneR2Md
9OPHxI1KfZ1JaPXH2rpwJPyOgz0rlduKpAiucNK5L+8UzvZ4isQ640rnZvOVQ20KSbMXoR3UXcPR
R0IIlvrAy7t3g8PhDPwY1/acAZRBHmhaM4PJDzPaGprPR0lB82oi2Ciu8eYNcchcigrxtDaVmDS6
cZriisESLm7gN1pi6Qn5GHodVat1yD8AlbYbopyNFQxfkN5z3ORV50SUIbRAi1YyH7KnJxYpsRio
iyOb3dGYxobb8paCai5J5YkAbj5uSFk5obZj3PwYeEJYpFOGVVkVEntikUbZcUUxMnkotwBsBCs8
hUo8IIdwktLp1wtPPWW2GSZnqZ3UOZRdErl3VIWV9F5ZUbghjrU/6BEH5XY6GuiXbqGfAzjuJZ0K
G08ptopUwUjqID2Rz/kivz06+GCDbof3vBSQKuL+9aYPkRb06gylrprzUss/+ZQVc0kt2NNqVxFl
xBiCcovjaj97lfq3XTEfpMdmT0vrZ80rbZ3A5BN2EG3oq25to99vkuqo9KGMikNKT064n4Ck8SK2
QFa6rqBcGnd4xzz+kb8XSPeR/Ymq7YxfMjOpA4QPy1mpsiPwWEzFWeYxAs2eBpaxZlvVbpionRfS
vlCDaCFd8imImhck+6WLxpZWs81SNFuzjqXS5ok3I3ev6uJXw1M584pn8YEYm/npjG9QAqGrbhou
C6/5W4e8XMQKwyyShJnOSrRFU0xBwIuKOaKB9sDXEvsj88J6XaRh2HVKM1iTvGImQ8qCvh6X9am4
0p5GhaIJLQ6UZsVH7H+Z3lJUo1UvxhsaU0MHS/yaVC8DzHdGJUMwY5hRRxvmCusHVMhieZG+gV/p
CQjLTUlrUBommpdvmU0DVAtiDxukvQsQTXNUChi+j4vzyXn2EucUi5gz9L82++HWAtFXDFhniwTt
Y0a1rEHXzaXLM5XeG3lBxnfPv0xN9hX4mZ3c8isqYQ91qw1c5s/gwbLelzELRiq1phZv8g668yuC
ppZPSvLFWmwTohIXRP2bnyEf+tt1nWKYoKJfcqvVY9AuOTBv4lPBO83OYf2x1bfvZM/DrNuTPXDv
c5JTpCwQSVKqi9XTcvcwcFk2OUaCyTrY55q/kks1eJSPH6Iw50cBsXOkJv8ttymlpkqZRe4iFuoN
cEOYuZxObI06rQ+/N9k3yQXf50B5bGwIrXoUcNhuRPW/Vh+wd2VrmwB9CHU9mdiMvf/2rdSuqKer
dVb11SQEISODTwS3zrHlNV3t/12QkvsahSCKYM7rVoMa8oQ2/+1zUfFDI5a1zkqZyiAo4o/L2PHB
x6+MEFDWdmB/A6koS8MMt99YuQfYaqyUeCJNTFxD6H3jGrWSmHvLCPfqMTkGEVF7Sh1LtRuP8YVY
IwmnfvMW+pnOYIF7/evkoRlXheh/a/eSalKD6k5lZ6eLfSdj6EDFPhfYok3/VfbJtLZCsKSLc3Dh
WqQ6NTg6L3ymthMWDq35hSCxR6BW2iIr1M3uN4CI7bcoukc+/O80pgXwREeoLqcMqd83YvacVSSm
wLHKap9vWHWef8x6yU7QfzTQuTa+Nk1iyGl4CUI/n4eAJ1wS3riEdGJ85kjoEJxzSWMQpkbZevpg
vA+arxh/gZYcNt6cH2YtxnDNeKMkeH9PH5IDacffzR8Yrvb0ptlIw3lTUYNXeNn3vneLCi57QK00
X2wvm1H4QBV+zz/St9Tss8r41460Oe9A++vpCajYEqjcMs3plVlf5J3/ezFShpFLBfLCRtIdpAZS
gB4Pe8iY1j536/Tuf5/I1e+I+2BLEZDuznLczquCSBJGyTe+cJMt9DWE1+L8Kf4JYyamUG3CmD9b
jWOsmFSAerhiGN9PFsK6mKyoDnGdoJPyNomyrrRBYQkiU49MnqHBUybYTu8TEYOPNQcnWMbF3PFa
LSiXLjYQqF728jQ6Mz4pXtpnRYUxFk3kPhLV2ayWwazy+0Vyh1zlKy5HlmF/GezMFrizqqazhpVm
MYDMjzM8kByZ+LM4/M1TFQb/GPTcXm5kFRygMMvzMekhhiH+fKaIeTiZOTIAIz4dtZ3RMlNMqWiB
AobiY1J6z+yNgf3+bq73uLdSsMseAMpO/ybi+OWvzNLSesBLTn7oIZy8YjWqKaTbt6423w4YKSRd
9wCqyZmdHd9Oho39Zlu5z6UPF47z86MaNDhc2+oECwi8Qse5IWAliQysECCuCOijZm7g9RjgASxE
4LNIeQMsr2Rn3B/CEh7aVaU6Qtf0NvP0JDD/RUvsgSHeuGmjUDjh4ucJBBGMJbzr/we+BW0iQF72
3SRWnesMoLWlAOKkRMUr45eiWKkxGu/0ioJ5ZFS87dq9xeYEG9p6/uDB+79fS27zUMqV6iO8QjFp
fOpBMdfVxs5/2fvpQj+WK0DurOQ+6HEzsY1YlDyse04WHQdDjbJ1IDUTQiiPlzJ5EkqU3Ibd9/CJ
C1HMBUpbeb4qbjxz6Nq+msqZT9SVMdNyxgVcJluvv5xVBBkPVHU4WKZJ/RtyTuJnTtt6eUo4Iu+V
SrE54iMbyzSuhWqQW6RNXBcBzwaYRhOuL5zpha7rJOVVMV36CfaKok9Fe2Fq2kW1T0k64ndlZnMI
q9fDsO27k6Db+Io+CJ3tZGiIH786xNJRvCIiuAbqtEI+vOdC34q4rqFTc6C+JvJ1GgOxR1WLFji2
g5J8EWzQLXs6jrEZWfTc+7GhXyZeh46n67y2rK+9Id23cbt1EM4YxUqAVGB8WQrE/kKTkbtQ0+/2
fBjAn1jEALqCRrM7XKdHEsFk9VF0zd0kdFVdARob3zVD7lkxGrzh+XJqEyzGSq2Ik1OlsXTRbnxo
5zzI88lZnp0SxdfoOEOlg/5YSxPYjifAKYgBrsnl7uAdaCSxM6OgLzWB6lPVMjfYzmgrAEtQsF5D
DlxH1qQmAi16IGvRcdSkr9LnyHUgzfU8Ygt/IAzjfk1GXOUCN0IhjMKc5qPBem75sGVk1UG70t0h
Q8wFiY/NHQXMo/GdIFKFoOzTcVK8/6a8S46j6O3wdqpCzgQbDGfBxbHTMq/iCA1remUydZs+cMcB
8ConQLQx+8r8fzTlCU26nTfinUiz9DUqcKThyQzwHdLPDvIzTSEZQ4lJSOqqL5pDZDdhjgblFtWu
98izbJlvYWmyMHNDx4re//lmy4a5O3DzDiqq9l5JhArJW5G3q9paeY++Jn4Mg95jJgHyDGSbhBsY
0kLxsfrDnpc7hbryMGge2aKl6FkDvFL3fu9mvy+fKBLEDf2VS4urjPugDuRB99srf8i+RUrM9GZ4
GqwyVlazpmoR46vYEfk7CFpOjpD/RZOukYJl53X068ATK97mrtWc+GSiyNwprS6w05jQ3YAYy0kg
SwwiPyWE6HdCkeijYCVq+sDhCg1rgp0vNIyaY9PIG9Gyw0hvWFEKEY30X4l5JuHp+7HHD7D5cYDP
dWGe2a9KdfUO7bAqCcbuJTz4DzKVO7/xlv0bOv9FhWHuFe+atElgRil1EQmzgnvi31ywh4Um6BGV
ko5xqAldqskKOM8EYipmRn725nt/9psR+w418Y50laBWjzpcXqtSE7voZoCbQFEDvtlPNlKqDalY
Rejoxkrd71pLtWgLxgr5W2lkFgGY8uWjGigtPSmeQyeuI1plKP0apRwsDI+i8G+nORH7y3k80WG+
WXYzNeRR2bgdRbJlP9E43s0UknCG2hPyHXMZ4eIoCjwfPQIqFrdLn97zFfAlLR7CvCflfpnt21xn
PDzfJg6YCOYvfRE6L1cJ9ghDKH+l2d9U7vuZiH1P5tYNYpnr4oqSgDCQnQh/TiJ9RO1I2tLfkApz
ERuVWKUFqkhf4Xgzt0uaNd1tvEJZH+EnyAikVyuAJDL3rIpPqy9DElzxFqhVEi4IoIywMQVf54jE
Sq0t+10KCEv0x6PpIFcaR5XWA5KTsytcc9ZPyyOb+UdTj/W9MtnalJ7/LYj7wJrSetG5lTB7SeEU
YxLGw8JIcsGkOwmLgs3tAP+7R9O6doXSVKrxzydqBI51dhRRj4aD9t3tPKcMI9JZ4PzjY/gZ0yHW
3lskl7aHscsoAHYNWChbtN2kJldQ2BzZljorbqJeR4ChgNGTsRGpHr2K93wfgocuyHCpDtpNetwR
3buq9K6Y98+qLZxOVqDET1wyt6w1LK79fuz7towYdMobQswZRif0m1+wxKf8AVTGASAIQihy5CLd
1fLWeBuVfZE3cttHJdkptxHnPANyn8WmMZ/N28CAtHjJWxK64Ih2JWkHc1LzFqr2KV8ZWVVXaL/O
SZdJKcb8s1C/bSWCN1l7WRSKo0bIiIFEQYfer/zpPcX/Suj/7BK/zsKLCOqJcQmWSR9VzuELyk4g
/KgCPkeTm8KILCaElfTRNyNaUmkqd3/ycS0nRgjNezr7gYaPTBGFmL6BlvNt+XDAGLGoLFZDoVih
f1nFPbcmNsmtadLELXWeqmiv+8b2b5K4O2NIWClr0O5NHvyFgpRE1RQ3jsGHtS07SWmp4jRU+4Qs
O96CWBclcslIImZ7S8DGcN21U1cm7qpS7JckWD75fZCRhmW7TUJJFPu1L9678rDQzkqkZmnxwFI5
4equV07NrQoJPCB7zArqa3tpLz/n74I3XTdrXg3FUpnWJA2zgDfadG2m2tmzFpkdF04aItbABkO8
hvEQjV+cQeeHgnkfq+QMwCBSyB7VpTywtnDL9ogqp5+PpNu/7aeLtt4iF9/CFqJvCXOvPTj7D34S
mAjofocTk6WeT9Rn4n2bvvTMnW4NL+xPI60lyLr6O16peJuJWr8ck5m/QignMYfX7V6V9SMJkw4B
Nr0nWRkpCMA+mVK7+6UXY2jh+cqfCZPK7k9tuYLnNlhQ3WdnLOHgN4oI9uv+5JmUDKC/KFNPC513
CzCTA3x1LSplkIXTOq+eaJoJYNb0Ms5F03NvNsIGM5knYonhwpaLS3GuWk6S8TYYQlEYzramVrXQ
fW94G6oGHGxKs/RNOyU+s1atvVS8BOlj6AchOavsVFVdDAuoj/NiDUlfuxXDL7gGwIOTGj/fr2/i
yH9THygHGly/O6P4ga6QE3vcuiYTkdfgbLht9DpmZfR2Ha3zTAQxOrBwywXT8i54LxlYAHqTSX3I
yaH1QgOx89T4hqO/H0dNG4XcfgStfOPpok4LT04djFxLLLgXnBuccjvRR+QJi9Nr685WqzfV/RWf
7jM6rU8Sl0MA/HWIA8hDeFkDxg1+RJZXK6gHS0b8kjdIYeotRCTv2kUa68aC3SaDAdkx6BIB+qVX
Ylqyo/4Unpb7JIQiQTkdslaTBd1Bf/7bZtfDQhVJGNbQ4QGYR9TtL549GFNxJqlokS+k29/23rbv
/lbc65qSpSCnkGTyqEygZhLKhir9bV7irWSXbctEO+AVoMlGaQRqxu8LA5TDwpkiHG9K+guLjEPO
VOeakKnBujwWvZSwtogodUB7HY/qhriu7Jat+4SUkwr/YzSvhKxiUXfe9jfEW2fEZCWXHxfps4s5
nAtSz6V26QDGS7ppSDYg29tw6mQTw/cR5O044DlufgdfD+cpr4Tp5mxlEOUtYcosFaiYNmUpNLW9
B7oC2kOgfHecQKq359sVw8s+pQ3UyR8GPE5XVn6zKAP6OIPfEtJzjwVTwnN3TfBPa2cY7izXwBJ4
iKKPcN+9gnPjf0JxJAO6NNChh2UFKBv7934Jj56H7cFXsBYkqBkbaKfnP7Ptc5JKZtJbT3ZYhtEy
ny3bR7Isn90PkhsS/e8s9ID/MgkUCJhRNIUZIFw8fsEHH2WGyYOfDtoizgA0afY3X2S0XYN7+0d1
ohiXbhGHbxwAS7AO1XD20jPsvftE5wxSDRGo9Dt58dQNc6Eit/lua7ogEHIUfUbihJB/UcRCA4q6
PBX+fFxpE0EdyTzrbi9kXDmp0ASJUKlUDxpLPboKHYQzs7CwEA57Ovi2carPdVX6xzGZ4wDXCN2h
AuSfqZSjlDGw4CmPKpG849MgnBDwjN22VzU8tb8REa1vN6yBWKqSamc0Bh/h7V7Mg5o0gvSxSgZL
pmVVstpjdidCzEuQnjBzLhJO/m/IwUhpCshQ1phvxGy61Z/BINhwQ5s7cEuMW/MXwVzJReSt/xoL
kLtaNgkC/8hCnaSGnh3O5h0ElebH0o9Tl24QsvoPfvlC45OYxpaPCSPTwTPh19c7UW9uH4gIx3Ul
S+4HrZEkBldRLABzd69tC6UJrKX4oGpBIkY+lQIVeTp+bUJv5KygBRNl1a4KmMn5YVwHDE1s7kGa
/EFqareFoC7pZs4E+chnmyd6WaCBtX11YAX5Cej3RNYSyhrdcZs5YBEIEXnxizlAlPzBJcjZofVo
EtCWPTOVBjd7ciBkD1Bz72vQ8DXz2XOww/lk5w/PxLNNb1GHEp9SFwCxcUSyDkEz4qJYcd9Wooej
2y3ZwV3PEfS8W22BqdAQ8Gi0QPzo8wUl5+QD9FElyPXjgapWv69xFzLnIu9rkGenOWBPv23XuD+z
CSyKNeh47u2yC/qrBRFugEeEak8+iS+4Hiy/YitSVk4LpcFq46g+TMZjCufI0uCrDWnqZHOyfF1t
7ZUWtcxXSdgFeTvoDqFPTvi62ncv+Og5W4dY+PV2ZTlCGldO3O5peld5kzF+3eeRu/M/BFTu1L2c
Wn1TdUVqB4rDzXzaOXaneV4bU+1FztemGPn0hwFQQ3Tbxum0rrXQFnusWb3t/VoZkVXjktyEQjdi
Jkmwmd5di2dhi6x9TMHh6dIT1RwMEZtPz29KVN6jEpCAIYeDrapfYumWNEGszuDjwGQqe2UGWI+k
wKKups9Ge+p4N3/LJBYPVjoY3+/yiNY22eLXhP1Seaa3cq9HklaeWXKWiwuLfpiZgi/RDAoDIW7B
zKGBFPleBuETK2bcF8J8L1dBQmfqVxMGG3eDQ7NrXr5tLz+EC5j5NBe1X82SHj7rzIvVUpW/0Xxq
2YZk8bdKaAelADSW6ZXRsgtgJuxq4m1Jh8/map9hPPwH9H12R45vT42w2apgZ9nhzxGFYT5Ogy/j
8RxqgYq6N1UIJSsrnmEl0NJv5VDZ19HhW1rYf1+/rXxybyDS8QEeC6o6CnLWJDljY6cjQyaAdzfX
M050JsQfKKHnWmMUsyTgkuavpPI/vxoroTTAC5PyycTtgWbgsZxViR5PhWeRJVODvSFyzjpu7onG
t9UmCAoyNoEFENRmC+idWrKBgGoWznAYHrIxnmj4xYqosn7Usr7MJZiHEfTUYKokABZ21hGJvVvS
JW5Wy1wR/NSCTuakq5U0U5kdCob8K3nLMbYAfaobWKExn0qQ7gdS55HCdhd3mKYHdUya3ALQ+U/v
XwDuyHcJWuIms4uo7/p3zMl5ZG9Hcq4G6hiWNraz925OqRLTHzHQZl7GNR+rwVouxAuBvlL6eI7o
RXnFBpho36PsCKGErSIkK7QLitS5bPZeGuAavGDa7mglVAhOj38xtKlJphpYdtQ1qy5yszDxmAeU
8qQJDaBUXGuqIlcMk7WBHP/3m2rnZQB/4tBWnmXBxtsH4Por0JnnVQ822PIbqmmC/KO/n54ZFM1p
Ii2xMjAK9fi7xsuSjdTrxU5CZ3/Kt+NJtqoTYoQWuJ8E3GznHox38I0SKWdsl/YQ5PMh+AmHjhSN
eOpwZUn0LiXZR4y2hDI2gc/OHVHl3NNp2wTYejAA4vjpb+wNfTnmARFHLSMyiaZrAeVvNZMBxiMz
XuAn4S3Yohym6FFT/iX0y8S3FWZ5CQMZ0C3/m8l19WuYBIJa7jHCWwkpsCCmbg4ZbHrVl7QMgY5N
LcFwxfnNyOJlMOML/d89qo3YfxJArKIhamjSvEQh1v6LL1vlR66gk00kFmXPpM+GHLKKrlD6gig8
pMnvzRzsuHx9gh61DRQtidQYnd/DFJh1ToHiFODbfRTqBv9XDW3hrpVWRxdDa0OuP9m/5obdQufY
R/6h5Ii+4vk6kJIVnzcZyEFE5qfOx18W4OzyQw4NLDBQjQcyT2T5l5y0j8S0lbE6oags+4dJKW+J
nK56EiK3ovn3N60LfTa3z/Aknr4wlI6/vhB/F5Yb4xlakxdMY9wNft+z4rRZQ8+wO2p1daERzbXb
psp9fPy0K6qFWMA2TyxJtM4DuOcO4tiwNN/Jx1adb3RNft/fK3JBsZQ8hY8lMe0g1OunbENnRZo0
HQMZ6lCS/cE6YVw9zHz6hgKHXiWBuoWrYu3uWxxJf/SfxDXsa+AyvhSg5wQZFTOpune5kQOEDj/T
LPf79arRyt1giceVsYbLOYByUMtLc+dRfjvrb8+uy2hsPgjdzU2ZmiLzihZWURsu+ecXpaIc2P8p
er04/IgQE2QtgZtc1PUzruuGeqSMFc2BBGIyqV7acbt2w9MIsi/vHBvlZNlTMCPS2+tl1hwPHZ84
O9UcaX2NMgNP85LYlc61Px9xG8wXXTS7FVJpZ81nT+7IxiTje4Xshgd5NBU7U8oMupnEdlSIiIHo
/lPSTmXw58pDTCmS3+EDdmOhzH62KKbevbZIutrp5hqleKK473grqA3lZASW7B0Je/X7RpGUa2An
O3XVg4HBWL5CQl79kAxx6IeR6ySfLhgrXN4I+G8sckXmmq6outNuN6/13XaEIEjwHij+mJMaQsAx
Vr9YZcs77BB44eBunDO6Jg1+D4Z65NhuuhN6NOBYoY//OsWMz8tRc0i93KDMq2ZcKuzdKMa3phu3
eEh/ppEJmoHiCS1tIPF+tnyNxIS8mjEVwTYRfUbR1jC/m0MqKOuiTKXLkKhjhHwnwgwcS75k+mhd
YcfCDp0/BoMxjO4PqV2X8dcXhduCd1NQd/wLJJCY6G3Bmpa5nQLfQRT3ICFzQIgKpw69esQ6A57a
xvXdsyShz79RvCT6ZJPB3cEZEjtpi+G56YLEAACd10AvpVDUB55FPTt0/T1IFeCbk3Y/Znrcl9qg
1dGiJqhYBLptMi8y7sucYf9Nx/0IcMX9veHCkYm1FD8Om87u9Pkq796LsEvRmKVZrut0fKQzyAk/
pRQ0yuOGeoZSdtDCWtKXPK3cInbJCD5h+9Mye59dm1D54VWgB/6X58QwlxEoF8jOCIsXCbgISNe3
4SzH1QhByzuEhEv1tGeuSOLgkrlWD00VzZQluINy7jS/Zn9lHsY+Wu7glB7+PD5cNUGZP97IBziY
6Nedi9UDTwpfm7955Ukup+j2v7+NeF6W3RitP2bEu3Dqun422xdWjcCvv5rIpAFxlXe/e/E8mYCv
8thw9skFXPLW0ScVv9vpuywwKqF519iUsr0tj1xloxBrH57o6/Rxz9CI1mMAtp+PRCcc+cUKSer9
lQMjZQMzM5BLuGzLeggPs9i8ild9EiRkUYTwt98rXZrfHSVaHcNDiRmLgiwRS/HaTk+F4QB+hC7A
o9huGmh39gywx1v/wgREpnGYErupt6TtsYPD12GUi+4+ln81oioo6KLMYfFUNLgvVD0odri81iEx
9yybIccsKqbaqDyoHTeo8UzMkBrP6+HjpYarNRvkcvtsKXHRx9pgdFBdCQp1FE/5lQDRjnFd8ClH
kY/lU1Xchg87lilqwchiJW6FGdKwxXd3JHTdZvD+KcMkqKsMTiNC8VcbEU+uEV71b/1kUawfl3VM
4iPr+xxh2B2JgiTCn9uQkFTUVygasIRmR6nzMkD1QgGj1pfETzczOIgJQsgaX7xxRRAGTcOu0PAU
NOAkrKmKsEICRpKYXHtqGd693zKRSBS7we+U2aeppwiKe5uq1bHXjqb2ALxzlw4Cizqq5DRS0kHt
LuerCdUy6Bc/CsjnM5YiZz80YY/NqrptNVX4MlJogeWv7+LnpuyPdPIaTPVP40F06Q38V+yXs4wC
ZI+W6qzJKWj5F6d4wxA13cLDpZxxiWc+HmC1/MN75qjH4i4dQK8tQnGfYPGEAJs9lU6u47hIPo+6
yNmZ2ck+nHFW/XZhn6ylggCrTWPqj/cX5lQnjpo95vfvCgAwTwqCYjiF++r02T+EA92wnjK7mSci
dlxDCAMOPMkGO4vf3ffZhLPwk+mVVOl5n/4CkoIQmvrF8dS15IZu+XsJH0GWJuvVaqSwhUlrE7Z8
87mlBs5H0i9hlWwqsONUXejTyWtukzwAkbmJiTlW8ZeVOv0kGR+Kbh11rqJFeB/gNzvO66wnIRF4
gMcRMLdZ8WVUTCbt/4SzIX3NP75NTI/InBdlxjyrJk6fKSh4MMUrdjIUyM+IxH4BiF+xX0sN0rHM
0ImIwmr33+0rJ65WTFX6b7cIVT9iZBw9fmHljMKGUnifAjzdSsW/yZ0iZQyAjIOJLr6vdESCT/21
e+6wh7x9QOvCAUKvznRScDEjSHbQSNAAKaOM5MZXvOi6aV9RVDIFstbCDW18BIm7tOcwxLUkRTdW
ERALboTQJ86hDAryrhgNvYOMqT3kEEk3U2V3dE49hH9vvL1ZQt5glVnXV3ZN9CQhhvxEzKjUs4/1
tmK5Sx10gEiX7Z/yvz/6DR8lUNQ8pzsoPBWNthJVW5EbW7Kwy9xBvWbBfmuCLqBnLGbKx4se5ozZ
P8/3BDgeIEnJx02n/rYfMnKBg3aE3yc216D405+CwpqAd44LXnA3el5ztaaTSHuOyfn+qYiZ8Ojd
ZCqHKCJEdw0EDhKe3WzOYyCYtLFHT8Tj4E/vsrqGCay/aCQqtISzR+AsGsrA3GdtCDk7y1dPJpwy
6P/Jvi0M48UmSB37MtRv59aNxRjLXUfaBuC1PQJ9c/nRVcIGTQdLc08Q5WmSvkpnECG2XlVO4ULh
PUE9CbGsDwZ61k+Ya7GN6jaKX+61ZGbhv8YCgNkCHL4XBQFf2fJfKgAa0uoJQVwL4bMVdDEufDCb
m64Y2X/PLhzXKbW53ItqWE8odQn/DPNM6VNpe/TzX8lrRkLLaLsjW2/DXRmT0UEM38/SmirHMA8r
0+yPxapZ4mLykHX8yua6qMqWYrWSkwoY3wjgyjXUSDdKVJIBRk7mMaZt26rbarmqQa7rq2S3G+yb
MStWContRQxnLUPQBkTUMGY0c+nFPVwo8O2UenuPSZh3nsvL8d8dVAL2X+5A57MMJum+pBZnyHbj
v4fMGy2YIee3GiFRyiODwWAYGlmtt9GwYbd885CrUSv2ZSOmh6cuqIEGw+4PxBimBuyyiqmyxzOQ
dBF5tkYIY9c0ZSJ8+MH0ouKyg4sJc4I3vG8166mvHgRL6kwV8L2wiJ19USS4dLCsCWejUbxOs+Rh
RGCqIC9is6EzAy2IJRQWeU9U7ycyjtsORIKz/b/pP8vNgv4VKo5E7t1DbqQ7qwYCluv8fYYE6TgH
7lL+qHTlzW2f7zd7NZXL+Wzx7dfZQbNxPnvAd8O7AfAFWSfoqloG7vksPb1NnNYRBKkCy5AF6kG5
BbvicWMbYBPft/vpnWT5i7/MdCR3kVEMe/ka3az3PdMD+9yERVQ+RKC62UyeIanuTRbTM8ln7Fo7
yFlV7Ug/wF4rGUFlb4DWAwyktzSc/R0ojIKPsHJmgkd9lfducQCXt2iarTQza8pn9tH+reTluI+Q
HETGJdI8et8geriVcXMVM57FHZ0u+flbItM6BruCvvsvyDQ9fkXITLP49tTx/M0hGkw57o/77okq
SoM2zlXdRvEvU9jLYzgnSDAfRQH9KSmxcxjHW0kTcRVgC38f52ttDQ5mpk7BenuqKlf7cosx8LvJ
r+hjUbL8J6Xzq1r67Z8BoyJlcutlyRC8xT5mtk9oY7D+EpAu2E4dEbnaeet9E+vNf9C+TrU7ynNv
I3uSDuAICHVfq6YR1z+FDWfITBjfFzxyoBhhGZ/8i88bdpTFTRzH8tvFbsxkbB2PdIDnq7fKc4Z6
+Z2vhXcwKFeAYIHVHCnbGGr5lbYaT3wcBkFCaoWiWh2QENgJS2DrHcRMc/dKBzPLJqrnS2sMVUCJ
jeHyzVSKj8fq/RiYMrUVYUxr7HfdvXlnFNBZlAYLOlGJbA35x+5VKhFzwQoszGOC3GsDPVRbPVTF
cHpCg2KuOgqK2Y/la2u9w+pCJTTQuQ2m4/+IApGhsm7ii26Ey/ilQjdd3Nn9F4RcSo8KZ/HmD6ZV
WLVKE8Dk0VmeGGxbLfRhh6XfIevL6W5UTaFDt7Y1FjFx/aIiZVI9RGleKaqxQ0EZp+92THrOBDxa
E2u2Q2wPYnKnCEYT9mBa/OQkrv6LUcZXMwDagXz/lMs4XrSLmXbTdEfeklZbOSTzR4Y7yhS1PPRo
n8aL6AGggr7n25QcqmaoVuOhACfeDx07ddc3E6jpM667a53dKVz65295Qpp402RaTtwIuhXYTG1d
cd65T36c9UIz0G6GDm1naZYau83/0XV+uFzwAFgnhyrugB2j2RzqEFFMzIsCSKGR2cZJo18r1mZg
keXf9BbSBqTC4FHJwt+3wkp84TQWPY/UYAHpYHvKYVU9f3HeVos8YzoknBujqv51fMa76tHxhc8X
EuHt368jr3cRue4aePzobKqO9ougnGK36GIMxOcxWhsZAHKW7Zju51nNq6K0ey6UNE1vzeK8BjXc
yM/0CcP6TQOkXp/MUZ9QeG4D+QCnvlHsgnb6FMxVBa94WkxzNwRXR5mG0uZBHIMSyBa5MXyJShzg
dn0hBdK6ir6036dRPuNxA7xnSyHD54NbZQDUd6iOyRkibA4iccqTsq4cnpw+y0D+whVpqGduM/w9
1j0RfBsbb1y3xV5YR+pKKqtTTQS+hK1HgFkncgJciCAVX9fixpShL7u/TZCDaQz0EOlc1+CUD2v9
HDOIqsohOL01w5dKXs7cRrp3Tzmd0vZ/YMVS3RBXsmdJynwR+55brkn9qoA6ZXIPxQied6exzmxB
COTWCBw2F05Et7iUmPZR5g9BkB1QuSOWqSSC1JnkEg3/HzzjHwiJF3X8VzZU6fU1gNQntrLSDqqB
raOybtcB9TQRHwttNBX98dqUBJ2ynUJMcpD7fsQ8YI5OByqz/sWEXum+LeAYw5RFe4vvYV2MpwF/
HCUhA3V5ME0xxNZjj47WbCXQ4QjtVZApDjZ/WJE8owzoU1Dav0B44a6aZtNL+f2ib76IXcfh65mk
yoIsNeIyCiLEV2nUUCzmTUz38d35I6uKoIN1uUuHfa4AtmyU0wFkamnHdlVP3ns9uYWNVSZqc3FE
raA4niHCVf1YAc8qw93HNH2ayQylOnmUnRTQe059qlssj0uufJlK7936OfZfV9X0VWMCQFX5wHvZ
wE0/c5YNcMqxI4YhLe1B9aCTRqAi+QA7dkfaqvVRMWVHd2jGSKwOnvTS8JUjTCMK5AeLC2PsA3r1
R7f9zcGoW4w4C+0BkTE9WSW/5hd+cu0ZwWpqUJL17DzrWX5DhYFs4wccqYfLesN76cwN6TKNmcPa
coNt2vbzTrlrOUv5ZhGIrXr5xh7Y+XNxV/9XnDmnJSN+WEDQhUzLlKbX2MRI0ljjolC6/uNbNCGJ
SSrB71jwCPYi1hFYLgiQLEkkZuNrBY9+iW1rLxemwjDpIuXvwcJxcNVYcO5jsxwgF7VmspcC5Y3t
eus0+1X6EZfo+kQ4CdWiJO0VEZJIiGmcHQGiireu+xnWFPQo2XrCQo72aH1p+KPatu51WjcBvG/2
Q5YMyxtnwZPR+rYIM7JyYVh5CBnKWznijoIlhrtw2Y+PhCNYrirsALD7GJ/OSux6uHKlID+6egmN
b1Tf6Ie0kEVsn41ZJki/VDQqczOniiHF+Jc2SM0XrWcrSeo0z12HyD9LM9hS7q63hR+UkM5B07bc
YY8qgPJUjKIcncdSn3CpUwY2f6r8TuoUkllIhjh/qtCT5RURc/cbprxFqsB3iW37J7jgfl//cB0E
aGuyplMLdBhdzRMTv2MBZLZv6Xn/mhGwN/TG4ux02ztFIwPqnWUBqLnWpBibcUB4Y7gzpkaHclWB
9FDP0GnMrWXQFkXylJiS/NXjUiZPDPJs+1AmitwDetfsB7CNhMfZJo2DnR9lANN9SFD2kV6FYvYn
VxWg+s35+DF2WMqKmSVTRU+cBOG/KmondhfIo0pGhUVmPMhg3kcyw61eqefLZm3OseY8sve4LoTU
EvbwpdKTDtH8nf78xd82Fzu1qo3sgnSSzGBMLW8oMdHiPo3Xv0VNjYhId+19sB6ztb/AEigruEB6
Ft+BuhCF+5ilkERs9tG6zu0xqTHm/L8V/gHszK1Ga40P4QSB97kV1tZcM1G6wmlZCBcShjlbSLbs
00LveXy1E1NyTT5u1ry2dAws1vvK3HSd6I4nbqA8/Z5cyeLXFP0WPPm9zUmjVDbZAU3Rn6PgVmRF
upU6pqpWcndLoa8Ombpzq4ZEugBz86wGfU0IOsX5Ab2mKaiNjPU/jPPU0+XAys2nq30QmV3thGJj
507xV+Qz8OR03PWE5NmEK6dNNEihjCSnes95oK+VYd3GLZi3FWes+aRITtVbXm6PDQR+1dGcvL7P
Neu75Dl3VsbhTuQmOviKsRenAsS9Neqev7JW31BexhDro5rYjvI+B3FSarS6PJ1VuUV/JAjwwh14
AfdT+MzC3v8d8DiTOPx82dV3SBNiyTQHChOYXsHBt3P62Kl/3sZHfuNSDbv1jYCmFeDU/UE51lfO
Y8X71dn2rTUdZdoE9LnTASTCumQQ/FoMf4q6gXcHljR2J/3VVfW61iONW4LSf02viddD7GmU4tBp
QcUWcAubCSAz1rJ+QxA8RHZPnxHBXNfADiejw4Zxn1qHZsiokLLwwM/jetBGWlINaQSI9pmqfeTE
Hk6zMygzvzDjApUQmuHirjRlJzp5vPU8gVnPxdbLcGRGgxpGoQw4km1IdaW1mN2pK1U42kp/5YiB
PW1A9kIPe5HYZ3ivEnoSJEgE3MTeu48r1DYV9/6ZR9N/0hRauzUo2DGDL5nrKtMmVmF1KgotZgUl
uo/CD50Cx0iMXLUmpTEM7MqdsNuzGuJEUSHQQvXrdPlAcSXn3+wA4T/nNjjthWXi+kyOfxAON8rB
/cbVYHYHHlVZHTyd6UH2UidoEHOLwf1zyEMFEnJTT1JkKPjXdX6P+3i4jdnCWXmoJMar70/wXia+
vXNVfI510T8IlvWWT7bld6WATSzHOUNazQbfWn9FoB1aRDgEZw8H1/Q/MdM9jX62qKs2UoJTyB5a
D7lh3ZUhd67DiNLnTOHLjX66/TXH53+HsqsGVHyAUwX2ihJeMhEsirplQ/9ZM6P6yz6oug3rOxBk
fh36rUHv3vaqhF4WwtdBaeKq6QnEpIun7+GQgQWDmD0tmSBMEqI9kuKOQQcGzXxjWzkQ2IrjJ0w4
Hiq8pMM/VVsl8pww6XBLGzVIAqZEWZe+oIfv2WvNM6w502no/tt4JrWwYWy05r2VHh+6wbmTP2Wv
feNlVra9FyU7SQBeDW2MKqJZOeFguOwVAzoHGFc/1Cxs4OcM4fu/JCeLwMr7ZJIOug+MnYsdnYmr
NETe6zWaxojyGusdoOMMJ36WTioKrSUD7e+FGM5YLLd5njhhlAG4IB0G6fad34XlDXWBQ9FLaLby
0uEGtnuYUjL1jpvCmrg3k1hUokGTwD/Ly96ehPY1M2O+kn55q8ToRjgBZ/bTem7igRyTV1D9uil3
9V1Sbdau9pQyHvvoTWRKzIJh+ytrEV7DVhg1u0xho5iTUFGHVqcIYH2FusVbgEQ3L3NvOfjbrcDj
9x5SONdK7RyqITxzI0oPzOqlwOkC8BkeeO6duICXEI588lKVC61gTiuqOtxBSF3/mm5Y57DsAdjB
XglHxo/NAxluLPWW/pDFnThvDY2dK7EYz8yu2awCFDal5MyodaBTXTvX7OvuZt0jtbafLoIsKHVC
g+8bdWUumrrLt/R6sPlFGvck3+A4yme2QqDiEMwkYBJs4xSvH8JzEA92AM7K047es5cKUpokxNh8
wGzO+AycJybf6uVBy+1A/Utx7vDig82IYBh8iApcRjiX/FLltVLTg4atfXIqM38rdGqznhCnn81T
JOswahnFUVSuoXU485LqKQ/7bONV6z1VlQRVNnLor1qgd5s819rWn5n/JF68tw+oW4DQY3bwriud
vUKIBrLcxvqptVgoh+WqHcQMF/sHfVfk//VSbxXP39TyVG6nWvr4w8DsT7UY+8KI0dngw6ywntMt
zFwl5Aht1HIabHUVdrS+t6BwBN027Rcx78WkpkJKlkcatp+77BLT9+Ch3wa7H7zt76JdDyMRBT3B
Vu1lhH/gMB3b/FED4gpASZwcvPZXERtFID2U2I8MnkUwbMuD4reLP+7r1iPP4YL5Sr6ZJRVcOiAX
f3bQX6TQKpLS8qQMsH282q/lQTymg/8bgYW00rZe/6M81pVbu2LTrxjl6aA69F3XTcTuMzMSu1vF
70NLnRcu9lBwRdosXi1jGCnOqa5Zp/gnI4r128D5JiSH+V/OKZLXccnBBwajBxXU/T5o+NU8j5+4
F7PMo3ekD2GZC8A9JAkxp4maUZI3H5OhpqiR8y5EIqEahfZhbw54N9PHVseF/JyCteJx78JmniMI
s/gZmqUALlW7tnEmz2n14XjJTIwFsH7psGbGXcDU3BeA4ie7DULOB/JpxuEa3XTYm5MHPCMdQOFa
EDQQ4F1dlnZ8XWaSLk6fJ3rNTEHfqNdLPxxXVzsVHJjGBDyQ47EL4c9eq7G5duILiGB8oh+GjpoA
Hu2J11bLws1YurtNgPH/uJW+zFiKw9WsMLeHILEXnm8Ew8IpkdhYMvotTm4y6RHxvhTQvlKiYYb6
pIHoXP6HkMB1r5+QeRylpMAf6326kgMhtgsM6EA4GjdHEGf/fKRw8MaSBzBhwzA3vEf5TF7bkjXm
or1k88fpp/PAK6OU3W2y2mTCZM9IsifSyCvpEk/QWeBJ7Rcd19nzj7W2zIj+sD9bAG0o1zpo3efZ
XfFxAUJ9dN3huAMpJCxAyKNqP9U1SmjGPOArdsplKoruxe1hwVRBw3Bdkrt3e+OOihIjNPLY3I2F
RGGsfn734qh+HfSQIS4dE7Y4X48AfisI0ahWZR/CnqyD5UtQ/0GscWuhjQpz6JxfOUpKO3ZL3QGd
Hczid8ohD6FFwR5NkQR+9JEcho1mNCR5Ke5ROcVpIwwVV2jzQ6lK3faMyMQ52FlMm/IULSRljUlI
OKmKyLmBAzF5EkwL5vYnYQ7EnYJGgWnhBJR+w+InuwIk3ATnaL5RuHP8+FndIMEwP2ysOpXWZydH
inbvSO4zZbqixMhJuDbWVQcmdHW5FftKha1BCWdzM5W036Rr+kjVmIizFlfpSsH3OXi3c7n5/a0n
N843BEdAXndkn8JQr3XCdZXSzXV4n5X8Ii+yuGEsEitZcw+pig3O4dzFFhCEewgnjU2m5bY+iizg
eAmCvbba1YqujdJBpRsDLEgEO+9ogNMxnvBwuHf7aa/dS4cAKrMJBw6zabJu41zOhF7jSqnEqfXF
G7cjaC7LuGMrttjcCdn/y7VObISqPyuvYQwCOhfBMsx7zqQMjDd/QEeT5wTqEpMx/NjMGbF1FiLW
ddkSQRMeosY+FVypHUTOIq1ZGcs0qy0IVTMDKJIVHgIKqUqNQ86N6IRMmLuO+OepDdzw2itfJhJs
SELsXgkNh1llnX654YbFJQfxb0Nta6k1fNqEYn/yOhV22L9MYJXgMncH29C0wE/ZPUqYT+hHidsP
r9nc7qkuiL2m7j2Qh6TOUePtZsMZwmLYMELU8TzKk9isdQJuxb99+Ir+yTnqzLVgwdCA+SLqJH8/
VaNZK6fyIkZ8XswKWksZNkEXGi0jhBJ0HVHsKefztW3DQR9SqRvVyczHAdIXXIOKB3/sPGY3igED
TppafuzwjYqneHbwa8+r2CFd0XxyZhFcjFoPPMDyDi7h2mAAVizrYoFp30yKRetaZ40YY0EBCclK
HLcqATTdVOd2sc6vxqfBZiKJ1MOGs5Ix3CTu632Xi77yCWSDpHDVr27Va9qij1qfJz1verf36j8P
c94EJE1dbijk+nXMj4VWESAK7Ml6ABXr0TH8HYdoVG2N5xMIAbfAjFW3yabUC422Y9Ad9DaHlQEa
oRsI9d6NZV5/lTsYX0XLOBAglLbN9ZNcT5291GNdNBIHdrpY99Q7lPy11FC5I/LYNWB02M44Lruw
1W08uGDKOnklB0KjkyWx/KpdDLqpngTA9fWxpAKKziC++hBTNaxtDQFuvdHDCKZRa3r0zKHGdbyB
9znNJNXVRluCBFTmhzSIpCHPz+s7OOLjbMf9+a2OJOYUQlByT4S0Bz1ZTblgNM0A20zOt1TUn9SR
BUGgEb18O76/4NVigAHLiqkNFFmhaMsOrvtx9PEQAOnZhiMmT7IRU6tguFCogfjWRJQyIQNTsQCR
woYMJT7qlrzJiwT7fNu6jyEUvfzzS7aBewmeTqin2Xa0vya8w8VTttoOLyIgPlxfw/DKAq0mlVN7
9ZMq6l/2B4g+n2jeRwWm8AHGm4nItuUhASs4CavcqE1HB/L74xkiVoiNCtA09glHLVIcsAQxJb00
NfCdmEqEAI+XA1LYhD0XntBqe80QJ3k6pDqGXXsv7WqD8BehW7CH97Qr0/CBvHp/2n72ZSyYHueF
htkH2TbqzYgoMir+/zVuIPy52GSGeOkULyb8/STJsbYVdR50dKlkavz63tkR0QXIUbCFMR3cdRgN
o0G5VhmOcYjBlBvpEUxIcef6rzA7U8vd2PcJbF0MeeNeYaoxvVTh9Z4DvpCk1YXCj0OlQGAlAduw
yzcV6OcsTnGinHnO294d30vXJkyjYas/ydR8myljXkoX2AyrgCEcKdr/qgrJbOAmIPwkJoNFMYsd
PMixvBn0Dc8jh6/2UXwxtF+Lr6dSv0wSwXFj0Z/MguzYySrYhdH3gbFqiF8y+hv64igGcAWRefFy
HlxtZ/pCocln+7UnX3P4mFQXe0Io+6TcfRSd/DEclN40kTSGme+uZIqpDzeLupTxG33G6Wl++Wj8
LiqzJGUDoSzQq8pXmp+Gp87JtRHuvGdDNKzXPIg88tQ4xcNezIk1nWDM2AWaLGibLAVhTO68BOPv
D7mgdgBSqV70CcLPwrGaKuE7lR1fXZeNHY3973Bt3kxcOMCIuLeRhwN6DJ5F1oXlB1oQ+YuYwkUY
QYUS63ncL0G5NPLtwibf0VP7+h9JIdUkC3BXtAtugDm1Q2gmpPZcau2cYvlOaU1fQUMtfTin3XZ7
mc1NbSoHGTuM8tpjPWwm97n0++SFTaT4A+18bcqIEzI83BWjbktU9WgdNxKjviWV9YUwvxsfCAt1
40iu8ep7PPtCvFHVMPea8qzax8fr1KsW39p9kIJ5RjRGHLpaMU6q95FX2Cqx2KTwZe7p0uDMD9mi
4CoZAIT1gjDEW3KWeH8BOWieB+g1qzF4+m4+oi+citZAVYh3qJ041+CRhtVzn/h5DhEbRuWwCcaS
lCulJ1M/1/4gESU4ZxW5gyfQiHP0IXo+v+InzIC+NWQNCSGLXZCQrE+HFeO8OhvRNyy+j+3on7Cd
xjIXqM9AwGi7GCe2IhpreOD3g+wrtj+N6LzlctDPogSWlGG2gnNzdOhuuC/txOtBxsxcr65JhHrU
cvBaaJ9lRPU0CZX7d7bEwQRsRsbvy4TJp5CNrFPBbSm8fBrhogzjWpdK/bC+8KB9Dk0b8U7tHRC8
5mGC56Y069eZ90k5vZEh22/vLuYEb0D8XJCrs2/us1EmYyV7k7dmVtaMyrs9qA0hGFmf5xZNsYOb
sd1kTFd/XyhnCnC6/yUQO3vJPfOseMtw3j/OiC2ooO57PNSmZPBo0FdemHDjhkWDrCmSGkda66s4
Itd0jeo9Rex1sqnAjcGJGxPNz7foZwxFGSVaxvI37BGFf3yCgxkW2/5btYsfOnLv+W/Um4FmJDoH
Mh4iXnBRhCsMEtpA7LsDnw9Py/7ooO26KXQl0U9qOid09DVZKa1ACEvw6Hb6PdIqPstEuw2g0z1w
i3AKjRwoJbw3AicljS60kbHlgxH0QTWAcgzdbZGBPT4qmcp+ttetX6Bu+dB1+Pr83KHqbYbKtAYp
GoupdKjVcee4mWSy8PCrcMXi/KUUzUiviVSC400SSJVw71tXXI8CtKmdyvMmbV3wu4ZukIZkLPl/
hnNYucjV0b54LACI3LarwnultocuBk5Lfdo5gFmc5ebnv5YjCt2FI8r6g/3vxyBoVTdNigNaQh2u
jjyOYDycS/2h+66WuJ8fuxvg40X+qrGBkMNZ1NzhCoRKMHhxJoZaFvAkOtzlnFwoQMBrkDflrENP
ecnXAbj7wmaczWKR6oH1snjr/G0ZBu18s2L9uDDfPAykxhpAvc/CKjCjdyHpJvFY58xxHv79zK8G
+Z3pBXUPKrGQYOa6e9Xh62VOns3vqWGIQeIspQBPW8eyGnxfr+mrJkfKdw4uzJZKxVrQp2585Y9b
pRrLmjTEv2iw5vPpI5mTLYcbOFaL7HeDoJV++rKSq9HFRYaMoQ7v3ALE6FgmN10aLdoJySLBYLZF
+ygdXFeMJxvALZrY5ZgJw7pd0/307q1/MWkhHcEDEVG5LpBJUh1HW5Sq2qaNkShLA7d2NnKs6prc
E7tOMCHdII5wUBDf7P5VZo3E0lRy5zqDgnL0RcPgTaI9F4EHboqaEkCKoVkhg1Ie3KF+CiQykCTI
TkOCiE1F9mwryjv11k5f6NmBnvC2fAnR9mGFcgxzHc651Cf1eMQDepuDUGDo6aGYb3nL7iYxBCu0
rxboSE9REUmLHYcaUWfGIrC8WGpa/EexXBqUOMg56415ZjxpQoBM2FAouWOzG6DEO0ho6oUiVgfX
lF0kB2RP1nN/X7VL53oyg6ASDgxb5yj+Hd4FybrQXonQIcJZB7LhHjw+2Cb1X2mHLSHV/SSaOoXH
25kjM4sZufvQESdS+WQyjVGYercJ+0bznlQV4iqudmoxUk486DzCPfoPZ8lmVbikTLTKdiZo0w0S
zrdMZOGeLWVutvgjzAEQZERkP9Xihx+yTcTfK6fsGKEMR7sLLsE10DAQn2zopYkJbS6mOR8C0vUI
hsWfPEvfWCPSoCrfbjNuUymDEQ1ifj/8kZE9LPq3YoNK9qSN2y4CKQk7zLrIa71cMeYxDNjS27zM
IUwgtE1uDZJL+axWa1Yc3ts77OwZuQl+8NxBJysExIL4Jo0geCMOjKIOZhpGA3hrmN6t8cKJO8k5
1NGxezrsw9A/kTs3uAoof/EyQo/jN8xjwacbcrxwF2aGMSPEUPx47mE9HC63AVKr5sECB8/bFyW9
tfwXIgKikKsbKaqhUtRReBkgmdK4Ifun5nK8nNGcYXPuHhck7HW+D+BCfHVcL9cssAF9E6wXg1Zh
KHp7Sy7j/1OiQUA5HqIZ4/Df+kX7O8gIuVo3eeHmJCa6Q585Fl/Drjs2tvhjk+2no/rIf//xv25i
W2ZlaypvGVOuKB6AR6SDuduyZ90gFsDnCWS2L2E3EFoHLi+SCyTrq+YF3NoQTiuCKX/mfxNO1JHs
cSNwI3Kz4Ij8HgpbcrKdbvYmaFFG6M3PBJY+meWXABBzBtXy2gWy/lPKyXpugOswgCiTKghF0nVx
aYVs6Zrdo+gBRD0qPVo2v5lfydK/G88UWSDyULJKgcM1sj8oZBec5ypHA3wAoQQgF3hSiTIpF5gV
7NA39zw1LGBMUkcudomwpWP8/R91txZTy+2ydURhXNX5/RioDgay+Mn+a11OV74azc/dVNi+pxLW
+ixCwfnF+iWBTdUxYSKohDnxovO51uc1nCHVk4gM3pa3HXYQAydilBIMDcDxMs7xtrHhEgjhd5ww
YSHgGv0Hu+JI2E/9f6uw7STAjf1nycKUpLQQVcgPkvDtOnjzFqkROW5eUTEcr7nyNMLHkCDc6DoH
YiObxe/VHbTfMZQvlTrGqQGBq7uAIvGiYQE7Rh5oWqpa5aFoEfXb73EbcTXOVKcIqJOc7HIvbCg7
caJ37DYaKLVYhAUcJv10a1XYOKxk1CerKKSOSKm0sgO5BNVxwp35XLN8f7u+cKMlclyAjXoyxkQC
abBKBBSOU6YpTA3KJOHKLoe4f3a1mLjLsZs+6luFkKvN6E43BQTedhlzCYc8oMI30wxJQ0VSzfzO
DGsXyV2qoQlmN88y6njYxA+UApGA8Mzf/49N2e8RQH7ukUvjsePpUBLhq/ngQLHSGNUf3KXiCli6
87ABXp/wUJYv7GRaKnsoqDr4I7MxhCU4IPtewAQTNNJlgj7Dx268aSJhRV/rEUnNSxCd4DIPypAI
sy06rwb749puPgNNl2cCPtC2qubgsC4M/Ktq3bCTKmp4h+/6nDEjdJXI9OMbyAzXpxpDULCB59wA
3dZ4onVgdImUH49dZ+PkoNGOvyqu3CkjrFAqDosARO9NEb9MNgxCOTzb1d9v/CBw4rlDd7t1jQO0
f45miXQtTK61IL+7LYViPGaxwqQNjAkE0yN6BCKgThBTX63I0XnP5O93vsbBM+1nRpBG+MqDRyDp
HoHcR5bpp9yhyup3LToZukNR1ZPEUKe2UaHm1+Oo6fRAp9TazOuog51PyJTRGKp+FWbBMXwch/Zn
+rNcm6MIy6pPbWB/wvW9sLcijCP/k0972d/zjHD2HF+YCi2W6K4Q8pmRzTCVIAzzdnJH6V9OqINH
6IaTVmlJMFRNDsNNMPzoq7PEyr6qulFyGc9sdD3vfX+kMg04vtm/sDVDdKobxYvIMLM3w7peC/yo
h+xDH25i/llCXMqzJH/MB20ok1JN0lARcES6P19QKPRXXHZkozzvi558tgAjrZa0zEGze0e3DWXx
OiPMqWQFcrqZaUq+dhDlI3OhdD+HcgOzR6rO5MdT+65lI/POCtJRfE/HrGrRbdfeR+kmpJ7AZ16c
zydgpoT4xKnIJAhtwciA8C/olgLaHbkW7uvPVLf6KZgUjeJxhDxV6CGxFrBRXwMZtkDr9p8kykrT
oxHd9kgXikgAo0A6lOYpkzJN78XCHCbEAiuJEwnzCEJgdNdbcExmGkHdnkXSS8GCOzcnnDUohLpa
t4H67mgaxbQ6lzC2MGN8lMSnW6bNtBs5Qa8l7cGCzfKCCLfWTdTsYSPMTlIV+okgLMuxg1fJHDch
qYsgCSOKu+UagXtWCOPRLAGpIuLAbVBeyrHOqmC1XDl9PqanyH/V3UKVFyWrvIlvy1XgU7USGFF9
Oky+Erm4VLGrX/He+2gz42Urgw1mFYwF3EHzqe/+urRl8oRGE+cHIZkCQ5zsuAskXhYRrQKpjPK5
EyRTx+L+bpQn9u+ql7YIPXGMVHzebE2I6DKgGiAAsV+gbqzUe9/6vX1X9xPTUDyn5Pk+riSOhqQb
6FIdkewE6AdMbI7PAsdo46Qzk6AYQ0kmHApJaLXbRcawj2JRM99Kvi7TW6+WaoVeRQ4/MKxuvUG1
BdqA64ycnS7xGnMjD2wGIzNMeTE+pSU9QpWJIJgXIgMwo9fjPrpuDoLjk4irX8Ht0ndB+9rQz8jQ
PjoD7U2vaCnjDWppsK1LXsqzj9H4VZXimtQwIQ5QlUved0cAOir4qvwI0rTcucC8WODIY5t1EE4a
RtYRverzLKThV46Q0aAgudvA9kan1OzGV8N3amFcsftFo6DwIUjFSctdWXPnLlQyy8qUht+LW98u
T8/F8Exh8k0z7rIMeI2oWPocYaacgxvmJeHvTyxLQuKHArOzi3sTl9urlynfpX5Fwa5haS7rY4zZ
4qnK+BNyAvJgsxGz0phgOYfHs364tHEJUcW6NLBpfkLYiSdhGIPtVdkx8nOqkq4iKB0Oi/WCxY2O
uNUYVy0KeH2y0Duck9yMJTAbYryGroD8lY1qc450utsg/ZjGJMTOGoA/K8DP8ye2TORBoMupyfO4
jwjhZFtRRedzN3tme4DHywS+Nlza3NYN8hgUGfrC2vgchy0lz/GKHhhidbxdUE61YE+KHmwbTluh
vBwERpZc07wlch/ukggoQb2ZM+0vCl6bRAzo7SYCx6wYBge9AKozyGddWW1Mta9+B2I7advK0rCh
8KDt7Nl9sjEkh3kkhY7x8ziPWZsuTdKDq3LaZ2faCJLkvQrZiXNVb2L5rXUNh32CWNSdb13Ol4ac
wjsxSiol8TjS7pP+itOKepB6evzBd+AG9HxiJCdkLZLd2aeEBMe1mGOnClYX8YNESXinJOKzCYrf
Oen+/j0TaafvpmX55rBBFpKwEZuks4J5hpwJ9Dc/I7XbBeEUh+LdDPnobv5M7oAE7mHeJV3fDDem
1OWpMgc+YYUU1KQ9gedUEjrlJ9XFq+f4fb2ahv7wjFCjWha+bu0TtNzpmEZ7R+zkrmUiXsBy4aPD
TOpSIufAwQ8G0F04awJIqfzRpMbU6PFej7PleKAQhu2H7veZc1MROHli4J7/PhWNAr6SkLg0gZca
awDE4YmhLUdgBKcglaNzz8n+Mdn/DES3tX8J+IgRZfRCl+VJ8X0C62tEZkylu6zYyMyYX4cfKn9s
ZRtFhPW8Cz9OvCAFmShZb0psN1+y4U5T16s+iJrCDhyJviMRK0+CrWesxAl51+9vkYUOwmZSlsVU
vOz/RugO9j8cTGv6j6uYtTRxwAtkxtfClX0tqCrEHoEPQeQRT6LFGkQbT+YtEEPH6WeyU/cperba
isFdS/uB1dQPCarK9oqbap7OX2NA3i4pRko8/hCaffYX6rN3zTAPap922grwsSAArynVltLkNZ/N
JgBdIWwthQm1g8tJJe8X8FclCaWJR7/Ki5emUKgPcp+c9ndmaR/BIAxLy224RQA7LmjgScXaWDaa
mMTrqSEwDQnpCOcT5G71QrbdStGmf8TZRTEFnabygSswtiUGAaSgc5AP39Hcb61A1QJAa7X5nte1
3lFYguKgNx8y0mcel50C+DMKOf6VtcCYh/N7VibrcmtIPc7+J5fAUzNmdMwkOVncPWL46QwHnKOz
cySwBvU4RxF1s0nFNsWk9yin06cfUBWaG4vwAgLkHjOszgeQAbDFDaT1hELdRGIJDj3Sd8tALk92
hMIUJEOo+H3McJdWy8EDZC5xSAhiUCwsnXqEnTSwaY+E9MTKGfs7HIKr8lnlq8uGS7n7Vc273GpY
WmqJB1Q7ex5TlFl90zEmMvPFYAr/ddJgdhuWnnaz5KTWysRPzpkhDL4m31Kdbsh+Yng2mLuO49r1
qWSM13G1T+Csg9HRWfRugte8xu4fmAoZmqUiy5uPzAPFSVHQumm3vfOGiUvfUaj3nPXctSzm2L+s
BdN1y5tC2ZwpVgppJ/8eRjNAkufUSMVTlnQHpnqrvzDtSEq5aAVF6r9NP8WnjNMBXYPvTKjlL20P
Gz/g//24qYYcHT4itGUrMdc8stjgbtklUZ9VTN6BK4UHW/xEAS/qrMrskR/HuS3PAZuguAPslVNf
GepOmkUoJ7gKRWlD4QXgEZYEn1dB6xKJpB6L/27QAskpr6xMUlIvWhgFpeWCE9T4ufTw1rPBhGkc
3HSftCWIJtQnBtUWT5whvsTjh4wgfGgRwEY6XunrimkCZkzZLLLDs12x8Fxvyc/4gFRhL01Bvgxe
Q1bcD7XA5rCwxQaXMg+mfz2XOw4i5f7U0+Th/x3eCFs6ZFj29LC+EGaZBBEiWs1cqJHukNkH6E56
7OYlmDH8zl2TTLRXBbHL4l//NGIlp3FB23RdMAcEfgpHKVXq8AOU22QH1qr4dztrj0GUXBgeqU4N
A+vrUrI1gbT3K/dHSBswhSJiYi6bMLabE1f0Y5lgWfwEx6y8jbozMCTUmv92LWVUSJS8uVRbMNJN
eR7/1QVM1eac0cF7CRMsTvvHa1iKgihBkdbqovqb9iOr+nvVRCQUQ6PEiMb0S/BuYXfTaBC09wVQ
mzHos+zliqVBD1nPv5vOQNwekmI9HDfUCamttfCyhwkyP1k4f0ROgPrZtj7zrHCMC7TrWFoPsBDo
5JteJ44q8BjtaanrFuyEbDfQlDYgK+5PCQPj0MPr1sNIFk1TGuFNoc2mgBUitA7h7fmXSvhDbSrM
AbGwwLt3H0Rru8LrUXrQn8sW3WOqZSKRAQgWWKHJYnW7e4pOWh8aQ/jpXB4XfrlpLhddWMYmtOWl
7LJbjUOZJSzNT8MRBGP+MpsrHGlRry8ykV8coltbGdkJdmgfO1auv667ATh3uN8IxahuOLjxOUvy
/FkchF/wC+hZuM4Q//eQTKUmDq64AQ+4bcm8//uuT2LmgeC4E/oQBqeRObSiCJNPJuZ6HUai6efC
Xj4dh8Mo5mH4t+6FjTRr0VHXpW4+23vxCFuL9gea5832LX7ZwPFXd0E++5JJmpWXJ1NZxMIs00EZ
Eyqrl3g42KL5e4UlYYh0AOmeXo9HT0QPFtEzXvLyeWBchXN7E8+9NP0izPbMUsG7kmMNwtEH9eJF
NSkF2wIzimTLm7MCvM6Mil5J5IIFHwO3r50R2df4+V2hAGT5mHbsxxifxKQWDOYK74Lhbl4mIoq6
cub16z+liptoxAT73nV9I3PdVn8Q3RSS6byBNKNT50FZUGbEwBsHXz2U/zhGGTENCEP94k8zNA5H
Wpl3Q1A9Y9xETOpuMSZzCyLBVqz21tkb65Etm1WX76BbTu7rwCQqybRWPp8BpnA0YkpVsETFAP29
WdT6xjLhGzkEFmlsKUbA5qnl3Xz6rYvqXJM7/crCe5LCPyaNTBqqtdJ9fJwKAu95ss+rq1zs3iYD
VQIUKWZM5x1q251RImV0GhgC4CQKqUi00IXIqI49r/R1KWP5OielMoU2wll12YSHgs/sQvDCW19p
52VZJTNa56pvMb/rkKRVQesfsXDSt1efggPoz4f3GeCaQtQeNXHY8dfgCd0YXcM7HEL2/jTYnHkv
DOdQT+4d/nk6yyxMuU3iP1wUARjT4eFn7pTEOlDqvPewt/XPwgfaiFs1pygzrsVMxHn5jb8zJ3h9
tSxfP1A0AoTas94EZwCjJfqgfknsxm14glVXyt+DkGWlnsrCfcxoXWHAM0DsDLx0C0xAVv7npDOq
w0dYgDXa5IldECTZyxCgU6oqTwFRNoyHW5rqkCf+D0Kyls0pc5zA4+fNEqyQu6eZl38tNTlArllJ
iS4tEGCQKOhM6o84Vh7TDLorI5ORoPtFerDSKy6cKAwQVegl9BOe4lMr0bC0cYnf8FZtzgPjcYCH
OEcn499kSOAmf8nhOIWE2zuLqqzHGaiXt63AHdeZESuDLSWua6HgDl8/SQ+3lYnztMUdfX30gLnM
aD7tx2M/3lLaFo3agzuil5byaF/oSKGUTfQDOqfItAaoS8jizJH6AJXj7metPPWhef2K+3RggpFZ
Ho6OBHtLo+r7YbWHoH8ZUumleuVfa4oV7Ij5NH4hi95TIqTq1LwortjGVX5cX72PqMivSL3vkQ4v
rYG+WBFdnGZ4bnY8ajVey+c1kmwB4wpo1PPZYvoGMcMO/xh7MufeW+cykf4m2bVKVT0PLqlBqe6c
IV1IXotdkKUUYboYGrv/XSFS258XK8725bUr+epbxvvCfq32TKG/qT2Y4Ji+hFxKdl1WV1aRYNh9
ccj3ivcBK6M4eaqBJ5ePVcmkHPq/EhWMt+o4pFmO/075gSSg6sa7Fziw6T0A1T40npZbkHqUc9M4
/i0VDo1f6G5Xvbi7udVdVBVZlznGfWko9MNPD4j/5hssMS4spZYFtdMTrxkZue4SpJRqMFUI1Vfm
3HVDVykb8wc5rVpQlmXkOdAWKecDIRalkSfE2y1EyJS7ZfFxTvsjtMS8CyjC0N64kRdvHBPrOCQp
q08fbliIxOEpJm+4zZe3PtAiCDE7iua8uMwvgpYZkNqToSCh1dIDixFOP0UTTXw+VNWgi5YrXEwe
V9OWrHRnCaMoa0iILBUBsItgCmlAFYhZr+7cV09VbvwS2+BjoaiIuzc8TKk1jC6TKfPazzNYpSir
ehIZLzplYjUoBgPU9ln04DQQ4gjfehMO9Q4SjA/LGhbdRh7lyymZJ/r3qs4et0sV/DpSzYbdP3Bk
qy+fGGkUAKv3dpXaQPiSjliOvkv5N481VgNzkn7pq84nG11G25BUaUtCs5/naNWa9TmrLDBurJDA
6M7KBq0aZ4GAc0vw/zwPwZLaz1yt2XrfM2t678K1ipm2H+kzZrtsla7J7lu6GRdQh+LmBJcTPSGN
OFbfuCrNhNP0cih3XoGTxZyrccVJSq7CFS3vvBcPHehOQUE3IMt3EnIdbtyXHDG4/g86zbLJiZc/
R7Yhh5MADYPATOSVKB31aCXNEIhxA3QFwuhZybmltUhHnAxEuo6iegDyX4+GncCWr0SBOQhXkDJh
0tcYxOJu8RUcHn2keFwvjqssBDfYhZw/y/1EYrKFWDQHtdZZNfrZ4TV+tJkhc7fXmxxbzbFKmg7b
w7JKKYuVgOzJz75EEHFcxeX0Ck2n/JRneJWuSU1oQ8CDDV8FHDJNpjwJXyN7m0TlEsL/fcVQ8o+6
2eRE6gPDniOrRcmbkdbZYo2AK42nOZ+/uBMzPY8dIfwvpajumA/2rP89cXyBwypsCpZTtxkMkGA4
Ogz5YZQS4B2p/leb8JH7eeIsjkeqfFcX6QJH06Tl/fLLTmayJKMBFnFQOz/iIDXtG/rbkporQ6TY
tIHjqRdg8NrE5oLVUc8+nwlyQNQrphd0fP7LikGQ5PofS3ibqZmS8uq0pNP6DWKWwN0+WZt/720N
KnkZqsycOOXwHq8rTwZ9gkGSNTycbtpNYMj4NVz7GOo9t7/eLMCm25Y5RLSwkTOTJmaMcIHUTwh/
OwxWwiQITDzACV5RsX+Y4eRCAlV26S/ncobQSXPP0R0UqjjTqJAhyOOctqQY0ac5eUqOzTbDOf1w
HovD++hdiF74TlJy8dYQ//muRrTZlcnRuQXO60OQIncbcHvChYuM6IhG+ND3wdmgHuK79D9xxx+K
y8M/27sfLPb9Ax1nQDfv0AZew10hMIcIuzVGLN43ATCB0cJT0XRZHT2LAAtX5kRg7iEVRSMtgyYp
uZLjwocq+cuEwTDCQItXs40KIU2M4weSLUc02hiDrxHMqmRVttRG7BxcGkrlMpwgq6HB6TrbsVRO
XMmv2VYoEwexy4qCfBTvEi3ivZZb7V0w0VhMMNW2YnLqwH+OXm5hcl3xxZYwBTel5u862k1ncE0q
iIGNsXdaeIVAyWuMCMgoDuk2y80HbpKxPLJzF+0zz4ab+ScMA00d7b3aCBPOLAbwMEfsUN3H5jjW
jqyd7oRooJrhTHgK3fR1whsupd7Ai+M0YFjqEM/7cmL87VJef3N9cPGEbNnENUJre4kaAhsXr78Y
0gyOgxsWsJOcOGatRx/GDqpSpUiW+nvnyEfOSHMWUlvSkWaI/eBYFwe0/rMDZUISe4tBq1VoDWCn
emxPFTiB0lgLnmojGlijADj04SmK1GgBPEco8vkAT4UcpxjPumINSJd1N9fkTHBRNZfMJDuY/Pus
Hzk7KH6otoUmymaELpBii5aRvqwiYmTqv0/FSQYmmNw4C7XaT9VdKJxfJPDbKuEWHm1Ze2dxwIpW
HUucut2IQdwtjdXl1bqQhMBnt6ESNDgBr0h50VgqwZrEYpRLTMAaH/+fxpwZ1hznBXTdsxMDopxC
hpr3iu+xciMpSca5rnO/yIWtMZLuRdvYAuajhEikQUonGYzFo6FGU5GojOMjAFSS3CdZ3bKsAC7o
kMgU0I06VIkTdqrf+eS48ftoH5nXDPE+XPVVw2cU7D2TB4lQmv5DGsE1AXOGsGtwmEpsUn5zgXea
jAfom/yrujLAZ8tblwr8CpVU6bCG5tPj6MzuRMF5Ps5SaCHIe+9Tpkdfdg95e4s+vQ6yu1gR4JWC
ml1Yr/OrHdHrCK1T5X8C85VY9Y6bizz0iHbjwWyo+odMo7SDHgeYxLlSWUaYcd7Ff21ltq59ykOU
OCjYFrXUUFweYPPRVD6xKJCE5V6i/WTu170HkAliAl7/8+wevZCUSW5Q7JQRMhwKpXcfpF8NLJf7
aWBRqlHtYUdTCTJJ+xCXobxXVBygP+4jIz/Dc2S/vc65sd34DFYRojBNxTpeXwYDRzaDmEJfLg7Z
miJUNQxoVKqpk+qs6H50oJMBzO53UdAilPM4n7HWMTLclW2qfdy+JoI8EKbtI3/edJv5qF3Y/JlM
iG6A0OJQjkSbs2llMLpjn2H9YFRuC6D2O0czcKg+PC3kkwvppKpuQz4nE8p+ZyM8ly5RDEuLWZTK
KuEousVSLkw6tkBbuach87P4IVqEr54bbnF/AxCh5Ic6NwMdZMDTdc0c2gESnT7HaVE0IdZjCygo
+S28EsIoigjwat2k9kmQ9VeQP9uliD+lS6FTDVaxfsLPMACwA8aaVVp17QXsSb4CmajJ+2EOaJ1l
3ZASVvdowT+tReM8lToPomTZ3Zd4ym29l7JhNY5MLZbGVfsu8+/oAs1FIQ4oxJRZuf8lB5P4lAC2
Jcz21Wr3QSxHdE0K7LG8Zq7uOhaMDd3DdAnMrlDO37iKfxPlgXGcuqZ9lAC9JDCZBE6/G6uGINt5
zpRxAXMKgd4OzecLpRJ/XfgoawpVNS6IEzj2m0EiCHSJcG1jmNN9Tya90jE/rLxPvULpACVitoRM
z4qfTulMOEo+Mz8u8RPJG6qaipiFY0JF/M/GXMqO30sV2aVzRfX1Vfy5OEq9xkt2QktPHCHQic5h
gq0ok3WlupYxKDwv+RkXv+8a/aSFstjjGr+Odbasp2k+cJ1PmOe2x0PPIGjXBdDrkIIJrcc8UZn0
beEHXAF0GySimbJDF/8qZum0HweZlXvxuf7ou473WH96ed7lSULoCAMXvuFvyhnRNc7A2a777owc
riBxgSIULB6+1IW/n56Zs7wfABkcLAq7nw/dcygR3Kdd51mYbP0q93WNPJ1l66xM2YHflT0oJbsH
0EQFqdPiVmWfvVpmpPfGJY+CWdz/HE6h2CX5cm7Tr43cw89zavw3Y6VOcJKil8mQpm21SjykQ0Bj
baQ7gPBELjarAdTnDljuV3lSo95tdW6mp/RBZRjmu2T10EWMP+z7KUuhw5Alo/GhoUML1CDvyTda
+Cdo3iLc9ORXtChZra+qKIHPUeyb88+gcTEEmIMWK/FePz8BdFnnEhrc83mhYik4zsvK08KEel6F
jXgloIC1uwIEGziFBVNBVQNMy7TAbueCR2f/bWIAhrKeI7nhfWwDqOanafppvwJftPOjvPCWlZ2P
WRdrMHgNtvZHOo69ruvaJdTwk9TKX0I51o5DweZBJYv9aRE+4qowadgR4DxwmOFgcJJeOU4oP48m
+D231v8cMm8Wahs+Wh7cnG8RPm0YHCG2bTpJBoKMajtcttM2wNGOV4KG/FJawA5wHKbygAZQ5r/K
ggz6+EBBfCSJtUFDAlJQfDHaloCna/D2YKUasyKOSdhVpZQOU9+utw7LSc7xKy7W+jUaH7EIE3xK
bJ6Ots+JAWtPFx1i2DYZCYnLAM+A91XG8qMJpOUX5OA8Rc3tp9XUZFbyzhS08YEHTJTFCI+TyjP0
6zRcxQleQn8MDeeEamcDSAqDgCAr1a3cO717FgPKemyZAxQ/jZ90Xo8Z3C5Ipap7/vuaWBOquAoU
2uRbvFwzx4wKcuId5L48iLXSm9uNnVV2iue0sYtdKlCH+Hq5T098kOsLt0CruzngGWg6x6nQbJus
g2Azw1B70z8iKnuZAB/sp081ggfuCzOxd3cVC0Gofsd3/OOZ5WP4WPV2xzJglmSVSAH153YeFBJo
zm37B6OhQiq00VhpaQHvU0DT11OBnm0Kjhvrmm5HUq2TrFi6ect0oGhsED7Rild2b6aVhhGNliHA
6olzUTEmRKirP/NvRZ7YisfSBaJWh0ifJqL40GiaEsc9IUSaReXYHukETzC7NRAcwAdYpqTUoJhu
OAqe9cBT9eemHiFC+NfJl1KxjifdrrIeOMV7N7/B1VrW34dWQFux/TVpA9oZeulbB9q4cPTsOGJW
lLqYYB0VyhtRE56kjb098QPxbMjYOu0F65CRMNRzg0HYkRjHEchquE281mzLa1nazR6zzytlvdWr
eu5yG6BaY9nFXhVjE3mnLDbReiW8waEGpGzLw4moazLtIb/xu9a4JoKIT+BMTnxNsbH0zMuJcxIZ
7FNiqU13M5GJDrL37nyT5PP0ZE8uxbYjOZErEEt+DLJN3vW/edFV2CM6uvD3BjaKqJQuMY3O3xri
uiJE9aLnAjBWLX+4vLZfcSknOBzzz7m8yPrPuQsH29gBTKHNnbVc6CRKR03wnjAv5PTXk9jpESBA
RGblHM9eOB3qSJtx0VnkN5OI+PAChGs3hAFClxTaHUVTLIvKNCyKKpmIdk1/2jH7nTn75P7FbXip
1d+a7t2D3wDnB96ZeWy7nZ7BbIU2Z4eGbotlfGxy1YZCgwsJ6X9KY40rUc8tADFpHFEFh4yNjpbZ
38kpIbAD3rdpWjLgGAKuJMc4DoKsucVEfTjBcenUL1UrXlau497AWO9iJIlBUMt22r0qmBMatY6N
bER0DuG+nO7S8jr0VrZ3H+92XmGchu2pBbvwici7hjTTSMkpwCBWcOe0tpp06so12KAkoNX76KBy
QnHVp6HMbigzMmWN7+hKXbaizJ6ZTLMbG1HVxikXBZJwxO5hkJaRVWPN8yuB3koYc0NKjUmWLxof
CwWJZ+ORV0ch7OY1vyPTwNkRq04ts8dtLHvszFDQBUP3IpA8ahCTnsmFsiXpFhFUj3ckTjbz0gNI
+c91P7PemV8XpweJM+NfG2eGZXF6+obc/IJcvaAYPMm4L7VVNjbJWYqTFvEUDd3Z2ueFaT3czu7U
Q5Bu3soCxJ8M/MV8ahzvIxJQ4GS/7vS5UDacZFyV0dXFYdI/G2rU06UCDlHo8bQPixj7kt3DOG24
xWPUXJkqUOYtpJfB7yvRzQmQ+C4pPIxCNwBgesyCkOKPuvbT9ms0Q2fmMaW4RWOCpSTkFUjdday/
gMmRgZCoGNKHlo8HeoIH+lbWO3DdAyzolcFC6kCzVWeW7SeMK4Smz/yIo+STmqCO41B8WVrVECW5
q+gTe9wKJfXqIjCWjRvbtUTnYkoUzKX9+dqwyzmbdQhuefG56PXDsYaDklfawLGnXWDJheaOMqFV
YVGfy57FINw46kVxXvqBiPGT9EoS/gMr4j/fmmV3US20miZwbBV5k3bsi/MGlIbdn5wMwrrqatJH
2UmYZUee6+5cjQXNixbIjONDj7aFvo1bpEdk6GdvUCW1AvHftdSZflJ6bY63g76k8Hw/wsnC/tom
Y9P2NbV3gOdeOazFvqCgnrQtyqsHg23IOb4daWt7mbGnOmdVmCtyWo9/4ve6UKqxzZyjHifZhqXs
DIRA68cYWQhR9gIwKw5ykjcc2D6CPUd9Y3PEhFUxNn+AQ2BRYeNyijaGppuBmOMdSwW1Sqzio11e
IN9l6RksNienys9918BfJCuvVgLpFGLS2dcEk9tUWWT+8hLEePb3k25GlfvXcu2F76QWEWvG8JNO
jXHjW2sDmMjJnLACiILkKZZcEGtx1XbHeyxMq2CtgEgLEp1rZ7boM2FAWepME/5hOaGsWGj17mgK
UvTs++Lpokfko9cLMQbP8xbVriBm7KiVxWlEbgluy1RN9cZ1uG3lp/zC2aLihgNE1AYELVr+d51Z
xUTpB6iW/cKOZ2XWC2K9stW0ZfUiAFLhFO3XnnHuo6qRhwVmb0t7kSQU2pjOK3TcAMgXmMcU6ZD5
5YBxBceZVUKaXJJZpqxcUYH4styErCTDw+ICN3qdnRJvxj1xcpRbHBxf8lpPtDZWR/MA2uvgXnPl
WWsaok7lbZCVUAuTbomcAY9xfoQ8aYdOE75DFlCM0UtUwiuehIcls0MV1qeoqIDf3mHPx/is0CLd
uKpdFADat4u/MMlP0QdfxC10bcJnA37pdZ7iD6KCi5Nq+AUSNXAlVDs1K49monipv80kEekXVb4N
X9afDXKue5C9+Tvm0O8IwW/LtUiQVBd8RYC9d6T5F5Psd8xKUzONLgPFc5ReA6F5a7wZ4EO0aBmO
d85yyIqZ4OkruFdTBWUBVcUX6C/8GyptDLExdBzWLJGK4wTZuz40fXF4KL2yi4GVo7pQCUQ3lmgx
6+NZxFOEMEkSIBxy2cE0I+5lGDG3miEoV2DmBK8hyIvEwZiymmjJu/Wt1Knf9sMh2tejAAJW1fIH
9srJg+Kub4abzbZA85lJ8m3Z6PLGNbWpGf9Fdvz5EM+kAb34ooxz6kJSMmr6IyMGel8jn0gQGOmG
OJltHv1O6QOOeaPmXFZ85+huEpq5lfUc6clCt7WaLR56x88h/XbpNaDd83ahwid2Y9wy5Ab/WNAZ
Wdo4p07g/gKq5NyEOoK9eAl/Ii99XBO6fE8sdTD1p6UPT7z4h1xSkPppeea6w49j6tt95XV/fO0l
ZoOuorBe8scuseyv5S2Pi4yhvHo8HZSi+vvtY5oRn2ahWPxlDSuepzOZYrdEW1K/ZJwZaHY8YCxH
nnDO5ccMwy5GRA0wJMGuj9SZU2IYcHT/dtD/oCkFoUQhX/RO+IeDZlGHgCvw/hJ5ZE/j8FZRNHMa
R0Urv1msUWU8Uik1gjqoADHIercLunrOMM4qk6IEPARd8prMg0aspRERmi0V8AlaY07eluPrZBgX
NIMTm/Yi757WlrimdF8hv+DtgkX5dB9VxPraO29n69olh9Yc9448qgBLH+oklgkOTHDAJJUYZnGu
1g7boj4DzsCdEwZ4TISZ7wS+9ZY6ABhG4/83LWuvOkmS/9VYCtc8WylJDlO4LMeg0PYiHcbRW4xr
CwVGPElcNaFoW1DpQz+CAmPB8DyjpMTByOZ3c6MBt+AiXDqi9RODysyhvP+pZxZxLKYoq1sn4EvK
QZzxNnGcupUhtLa3UeBEH9ymfZaSVOy8iz+dT11a8CgpGGVZYHUyj9iPzVEg+qSyoBuL/uus53EC
k55nua9OghWcUNBKJGdF5id2RzGYV0EtXcdNIRuZpHGMsb8eJUIEGMMLoWX2QSbAjqRCDRpGK2DP
yufvAGer6DBIjO6ufLVyZBAucUE2q5zK7MI01r8LmtR3GQ/7XHgYD82+ZkzlVJpD8SP+BadjGcLt
g7CZzEcFSjRTdbBv+le5zr40zfZeZP7j2dSndvlC0I5xATNbnoZbYlR+rqlY1atXAxR0NQMiVQ8X
MqR/zp720u//O77Caj0T9BTXhkxIoiTeqJi3tXM+2PX8qoFH1i7/Q6Uw3hUi+jstabSAYqmyttA/
uJ1MDWulrBFrbFAweWm9boLLHbqQUUjtZ94tR4EhLLdZMAcrdY90KnLQNT84X2deuKdofyvdOpBQ
BamTTJNSjhbxyAErbN4tpRFeAqiaFpLPPtmZk6WbpVRqzHZVIpN4djTi61C4bbqwuXa19zHPqLMj
JyHjWJAQT4iIuBzRgkoxHsKTtbZuGW2Eb07ZX4gzcWtdDXnUMn61wP2X3pAd3npWD++xZYrmHSA6
zcW1uqc+TrRhuAfWoiU9tVzjx30OxFiICyRl0WAtXX3uev2YtfMTNE6M8TPK89r8tcvpHFVUlTLY
k7VfXQqKg4Fu+bQsb0l0R6NpEtkBI+HNVDIh3YqRLjUgTfNhohHlXsPli+StvROru4D6AHVsZHOz
ep1er21fCSWgjLtouKbm+VodAbwvNxrPbtlLDtMboR3wGM/Ovn/CEjC4j73SbnC1vlEJa35kP4co
o4Zw99AOVErPBLTYjSdUPREVYeg1STOdN2Fm7b0C+QkIspK7RNl8fa3MfCUKwmeiP4rsX4MpS1em
EO1E+ElXZGZTTVcjeufWaBCona5akWzKxKMyZv90PDWHSxSygv1ccSahv76CI3Q1tamkWj+tZQUK
tZmBzXO50OElDjsjpyT3bnQape6IXDbIQsTOtw9XMeBp1KBm1WA9uijyNAzFMUuIl0mF7aGI/WoX
3KZiFztf21xkOBKbmdxIwcdATJxL4SlU5OGo5fXS3YMtXOTLSHyAMEcbpYTTCeey7tJJZ/ij2MPY
5ATSloYrW4gsHxWKZCFh1FX4X+Z/EejwqN21UN/WaAs9HqWlhUt/myuh2avuzJ37hc0IE0lR4hod
9s5jE2syQBy0iktJQefgVc8AqhYjfhHNzacbqDyvSlYJ3trpFOgnuRgQ9vWlB0D7VSgromZ6/iDA
l+8SJW9wLLYWoSSjDUTqWKxQ+nxigSHPQXRqMW/qNTbCdrrP1iHWXKXWs9zwJDQRgNdbphGRCvKN
5VbSoz07zl5W8/PeLRZ99erpT+xXe3v3zY4vipovCLEw2Xlkc75T7CEFH7dR6NfkRPQyrwUgXpkU
7ZZXFmsk3EjvX/quOO/iy636c1IYXHT9ubcLgK62tDhaV2vIkiseGcagaNG+EYqEWNFBolQ3BtUJ
km+SEKbPbai+4MdvhdNViYbB9TIBJ+DwJsqqo2tra1oc09qjhADhrRLDb6nMLAcMjRyVBrsrpU4a
EGgX/8QQMNOjuQubHpEOinVG+MUEkqWKWa/UKW73InxpfSW5wnBXdgmMxDFkNTGik1l7tWZ47BAG
YPBuSkkqEVRKQJgdlrcIMP4r+NvHNciQ0iS0uhLXP1dT2SL2Rw6Iz1mwMNuZYa0d1ZMWuB1Oyahp
7jS20D7o/KXdHaKyFj2b/0oEqji+oV2o5DyZ1V7lO6Pmlt+OdGAtsEckUG5bc4Zo7FQ9hCzn94FH
YFdGqc+0npgGJ0dt3FWJrJzZI9/OTlXTiCWhWMayanHw+pS43NXjOziECK9QI+b+PL+R5mQqwGe9
1s3tmsJ+N9YCebjH4a5bnFsvaeEaB9ScisRdNHQTO7E3da5MEIPsAlhvQFSb7GcksMxkrJzrswbj
//H1qYWJBbdFMABg2IhJUp4ByqSkJb+kVqTF4oV5mT1e0WJNULUUMxUCI8a0AaF+kt6ClpJTHHgg
/6Ud5g1MmUkxEYwqD9QyqqxKJ1Lu0Oe4Csq/ST1JmZgzv5V09FE6gE+TgukAjdr4dATFH/3AlQjj
6QHj0zMUMpWr+Z3mWOuOGdN5EQfQf93uL0v+bF0B6X70f8J0fM4mfoTSFwKzdR5fGsaVvI78wXHf
QMc9vmqf1CJR18dbz9dwCZvYaaGKk/Jv8TiNwJycIuVD298OdBHEw+zD3pi8G0Zc7qWyy0G+L2uR
hzv8hjeYkGcFLMmKvXgSSzq5xRRHku8yd6q3g0kf3pZaf1z/vc8xK13TMsJUAQRUiTQwDhXoth5R
qMWDekypwxhs77XUIMdjMit5enj2BYoQP4jYsfYId7mSw3gnVOH2UrzyAyrRdQ2VpUs7Nv+hitjL
hDiOnQDZREwb1SnbF4m7IhxsNGhgY7xohS3UAmOEOh5ByaqwCANek4fekoDhU7Zqyky9w18LXrmy
Zr/i/4YNIlzllL2Rxpzjv6JJoiIZ5lGITcQhCS59CoN8kVrpas3GDporBH40Piav0SGTdUZpKiHd
cV2g3VRcNrUYywUrv98uasTFNFU8giQdwVFovDmQs/Yt1+nB6TWXue5eF4yc6IhLjZfIMigg4agk
+WoRFUpE0XozunnTbuKR0YWUJLD/Ah3K4CmlSjztE0bdZVcEOTY5IdwrB/4DuXEEGDzwixL5465q
5wSCppcKiJWeu59UMov+alylvbbfWAamsbsMcVzwSgn2939IYIKesJ1vTIkwGZz/EgWhOORXdS8g
Thr/+/UKvPkPZVF9nOnRibz2hE0upQuUS7b/4tD8fveiyvJplTqO0+mhL1rint1ZY9KsCh5m5TAL
U7bUezPgu3RBcdGO7Ic1uIFluVhPyi3KhgdeuPcSRuPsLkDB9FZeQc2S0RRyhQR6Xh2/jhvVhmss
wbQhM9mcQDWbdFymM0QzlP2uytItvg7yJXtswbw5U+4YbhI86Ezy13+JccUMAVGOSaDemmltW358
dh2t9FMQ2Z+iT9xhikZ6tWjIq7ts/92TPhl1/W/Y5b9c87GTOhLo6DEUDfjkhc0EN/BtrYHlsN9s
dKZuaL6z1uU0cxcP4jmcTh/b+U5KKc92QrLFXGWGehMXlZsoMpSVAivaf+5WtMJdHnrjOQQf4TlK
jGngChApFo1mYNT0A5tvvxi3XUyt4T5zxLjuhGqS4pqdCtFFNPpKOui20uB3tFMrh7zo51wtRJCF
ZKtkRab0cNAEi59u7GyzFZeCJN/5JTzKxM3YOptPMvyAVmZw7plZe3NqD3qyXHx0uNG2rhRT8xPR
2oRsX0Dz8TgQmeyW+wD5o5Bd8O/hdWSLxJyREHzftNDesM6uC8lVYBDhpOOzVI+XcKP/Ig55RiGt
qYWQBdjVJs4oXWEZl8oglCXj+/cBAinjJVAQKqzDDl1o90RZls6euYjgL6MicK8TN23J1kmUk6bh
CL/T6FpMLDniRx1cdfm5LBsw7SjfHU6TP6Id93gkGt5qL65rwANkH/gkxIPaNLNtRANn+uWzWWRE
xdKPVMVzYt8kHdIPqxPsljAL9IksGXGa8IbIN89pV+PTDP1DJFDhOIwTUkr97XSE8nfXSpGG2UnH
xMyh1ThIH1Jk7+ZtD5LrMMeeyx0uVuH9As3T1dxfeJbGLumyK+tTq+bateLyN/SjnLr0xEMZjTc/
YxktAHPX7Pa/N9hlX2yxgUeKBqym6E8XGvfAA2AeH8s7EyNdFALnIQXGNEP8RFxS7Skwg2XeXFAe
gE18IiMsupaCI5/SkyYa/KGDCiSpy0SYGyRE/dyAea4sfe4SBgiIk9ewAzucAXxgmofsmcMZNUJz
9D5MuMApiBrS+uOblnGF1RbPXA/I3lMcHPtPNws3nZCXpU+2ufHD0kjhvImUPsEKXWvLe9w7wHdE
IOcUhQM5nStnijkp6pCBkTMneBIGNpRsBDyZZme0cKRH/gscNLirZkRBHXN23uR6w+Q/4Z8Ra0G0
zbp9aTUdJisgJ3eI0xJAONKhHfZ7fDXmnWuEeSsXx3VnR76U3PQXZxzxdxpwxiOrqEn722RFTY5F
CJERdIm3qaZEAqPgKHVz1MTrwT3kWXCMEF/ggKEYqGN1Z3PxD/Zh5G5CZOWzZbh7banqTMrxSDSM
f4WAsgHKH8PW4hFrFXRnQKRnZW5kyM8h9tOR91LoK76c49E4meAVlJ6enoXM1a6RdtneUI/pk54T
De4j6ZSpvvQV9jgYMSIe1vYYeftWG8OaCWFIlDVCgQnePHJMr1tKc8208eCi+051w/TfHAdDBZoc
pbAfmMQvvqH9GyR0ZFN68bXvT+L/3SB+/zSJqg+sUPogpg90mNitb5OGjJq/XnSoCN9UQfCDs+B0
Zsv4pBOgTDU4UH/5vfK07PUgcM79p30rfyiqooaXStRATFSe29FxVLtJH4nzveSsqVWwQOKbL1hc
b0AIuDKl5mQepwWyrhgWvrLCDfKhKg0EaC7XMeT+STTfo2E2UVEUgWcOwRBpIoEtFJTGZT60UZV5
WcYrMQByZgH+84oIp15ZlejjQQEpmOouW8vowdZBZkkP8pdpoToiSq7jKhhmd8OujxgsxDuuS99j
eRM9B7sh5CLACwxaECSCoCiEhjwIbE8iLNXKqfsuvwy6MaqBjRuXkz3/qzRwp6MC4Ph+3Fl0E/9L
hJcgMMYf/kz9fwg5VPP3YY8TPkB4peYS6MgZwTUs3JkKUtREzxFCt8sAgtXBxX3wSD3iB5EPyZoI
YtkH2yhct5C81Ker5ZiuvAcGewYdBaUaEUyoycfYLIyQJpvcLbiu+GJhbVZm/qvxUIodhveQF5Jc
pt1sD3MYPbZTGqu9NmzzHFHPf45N9i+H3DMbHOLhx/PnMbCxE238h7dx7KXgSXfKiD+bz3GTqB8v
M9HvVIO+NwORguygTDMRdMCXjPsnRr09vRox2yjt3bFZ7h51+HfXMv7XMj3iuBboGFm/iyp7XBu2
buTl7BHYzS/u6JvBWASy9S5AGADwcCl3vXl4NxoxwUoSPG6F1nfRD+7x5tnP3BJVCOBuCWMXnnUb
qndHOYIOJbF9Hk1FWr4TG+2jKWhgwEleLS9dEp/7dlZ9dUp9QTVwK/i42S3NvoQm72nx5GP6Qamw
gXNYSX0+wIVI9LIB0jkMh2ZhOzb9UOoux2QzILGSA8VzCnsAw0S4q6GBIi4OApr7k3dr5AAAL4X4
mr5ibR7oIVW+WAF2oZN3KIpqKNT31OWdsCfWBqsMnTCkkyIcSKWF3KkkOQGbPjYuzFiZQapAF5kW
aqKosewKjKeMrC/BkTJj0w7ezzungSU2jPNJeEQYj2edYDc7j6pkvMPXpRiNDwMUcrNfmp97uGjm
Hs/EhvGOse6FdVrPDofgo3+ci4P2g491qinMUQmd4lRuibo7LAlNeoGu8aDLPayT+nwjQ6auOBzR
KAOJERkfZgo3sNsT4AS4CDvWslW6bPtDjpc30+NBOp3mdtoo1qQdAYpzjbfkcUt7/4UlV4mz89hn
PkI1i/D4bfgurpOIQmnrEv7Hdrp2cUOKm0iwrIRLxNYvU/P3ExMvfgdS3vyR6EYuQj/jtd3YwVK/
uL4lwxldCOyKAX2+0x0ZkCBIEyyE9B8SLjLKBUvwyuVRcj3RL5lbrnrkn35zgxZ7wBuEFulWcnv2
tsDjBuxiJC7p63myGw6YSPTg5ZkmKgXdM2t+099oK6K0BjO8fN49I+e+VEMB5H2M3621A+RzDejt
ozwn5/+4cGN4L9FjbwDLooTLcwbrL7y2zx3t3H/Ev0/j2QVtP9fIJelp9X4ZvnPaTAd5rr2r76Xg
wcYzaqv0SXu1uUILqdYskun854Sr7Jk1MSe+EvZB7DKfjvXpCL7W8QIjp9Frb4yllHYm6JPdgSFJ
ElmVCB6GsswfNOaHQTpcI6Zw851YT7jsiVkSaF2UyAYhvlHbjf88+B5n5OVjLEc27ttgg5Z8d9OE
U+olE9C/kF5jtDugX9OvnQiRLYd+DFioXOCeAE633RSXcwZQ003Y9SUH9Ud35YgdNS8ccSUpBX6Z
yc+HgYuDyMk9iFEai4fq1e7Xa8X5T6aScYCoy6YJEt/JdNN21fnIUSy3v7ufkJhocRDPpuZUPJWr
eX1pfkalRDeETAXASROCLnr8pmpdb/A0kC/WOzuNX9Ig+GKieihj3Cfqd82g33Lotv8sGZGLmQPC
9hg2Y80wIORlQ24XhQgDA86+uNiLHLxRX9A2yCx0jvtP4AMPt3dO7B0o+Jff8l5uusGSfJj7Z59V
8iKhFwoBTzeeEGNuyfglUgTPU9ruJc/KqXWLcUvEaii2RL2pYHJyQ10r/7p9luf9POdaf2OR+lzG
H2Za7MG6H/bPhuo/37/LpEbzKnpnE+LgIIUp69NrUvFQV+eWuAou+tmHM+v17aUx4l3+QimZJqBc
FIyzPFajzy7f+iRK3NuFl/mwQJxwWGlurH8tpn6fPxEIlE7Y3Yx20oZgTAMhGwUvFEr2SYKMUbVX
2eQPWsjwKR6iyu8dp/714HIYjZC7cVRH/3CgaMZ2hAJJ/Y+oO/d4k+xGLeGkVKElDEshUy2sRt1c
BKYiobggGUEOhzHM0pCzcCSPOfO/VMKvrmnrf1MVg/ZWol8gEJ5tN/JftY2B7Oefmj/MTzNew2M2
RcRaC1V/nkik/IFOcvpt525PYzg+ZRLaIB4KOZ29rtiYV/BHmVge+1UzwoINFlQoyRyCB59y+Jr7
5wwYJzRZZ24fodQrOfycxYp5sTw9UAcScvNOyZpuRwZVr+dcUR9oTch/7DLCaaC4LbU87vGmC7pH
wZUFgW2yVtdk5LcmYjKEhBG0zy4LzImLAj3LiZrxE2JZljOQfkAQk5ulWt758QAr8amV/U6EcF/5
1r6YeZEigwVg4Tomwuw4R9KI3gEEkL9bjoHM4vOWV3eMRPB9InLixoxPGje56sYKtbMCXgHP/jme
RzJA0XDSy9dKIMrLS7OJX/rmeOxgsxnQ/hUMmV+brtqBljLxpPGr1JsU8mRLswHqe+OtfE/WCWdF
eC6ybcp+eSAncF4ViIkc8A/x6VvThZF8W+1wKHQ+ow5VG7l8B5HUPw6MPcRWX74FPXHX1W2M4/4D
QxqYBt8QwYcfNxQMWkJ0wj0vS1TC0MJwxTHp1ZRiqgp8uJ3bWLXrz21iI3wpwDl52DOUuThdCi97
x64NMvsFVWJbHabEfh4Kp5zeAsuXfHPQGYn4X5XktMBsc+4/M5ydn1PGGbWVCFaC9bDN5AmhYro6
kpIkcWThoWZO+sr2h9Ls/vlZW/2haMa75KHktcNVGfkTJzx1HjzAvKZx4D9lFNNpOQxGsaXKb+Zz
BkTby7OB9DVMzSbSaKRp0yu3WjCyou+jCLgQOW7VHRkU/ptkoxbTvzQUtYRIQ4F1z5AXKcNwJ7TZ
Sv4VHMP7dCB7FR2Tv85dwBBYCrAJs65UKEbaqIK+DKvYnPQzBTZjsISbczXvr2HO6usPgwCECxSp
JWbYphEmOJytEDbk/khBckL5Y/R4ujWKA+sHTnEOnziImwgvQ/WHMAJIbIGFfD6SEZD1wUdkXFAJ
nLFacU/lWgl5mNoej4m2HkKyX2k+OoLuo13CKKeSGTAoyuPI7RV3bLKDQ/45aiY1lNCG+whZ1SLA
It9Ci6i2z7nbA7UjPjRM3YyFwxLFbimYKzpcV5ibMT1sePrKs8V7b2czmei66KaSrqwopphOSlcX
k+fhWxHe+VxL+AHNMgSb1rUjAIMGciccP/7AEiNezzzlw64cVkdUbLOLUlKYpw11j0jY4px+0fyV
sz/L85VxLKAcqQk3epiF1eINR0biuptzxziwq5GevLGxhPWd7hjT6VVjZ6vOSwp7craGzs2BbNlg
lWT3m01DFjZVIHUKlyUN5ESbEu71mebU40Hg5tL7WT9DqHVysWHc+F1KrsNHiysvGHmkl0QBH3yo
ovjJunSLdRKu7btzC9h9GLW1ss0b8omUzTthU/Zij68rk4fTXFfU8wPSOEXW4VUTtR5//zV82pmf
pRGfhAcN7TatCUYthQzOl6SPIhAzRvPP9GKgMv9bJzFvZtJRwMhuqyhWDIPgKxWvMALaGc0XGRWA
r/yGZ0ZBaOT8haMRwCPRi0BVLXK5DE+yFwdKo2SZ54/h7ltPosONRHlmDVjFN11HLE5ShairZLw1
y79ZBA/xbHyHNdNj3NEhQruQiLpdbQJER2ZFC1zeW9YW/D1NW7tw7NntyhFp8+gs6qYMU91fSLO8
TEDSU3SPY9r0sbRmqh9mhu05gd9EcsYnw1qkfc9RRCbYcCRbeAYALNWWQphxAsXhc22h3IsU5bYG
oilsUMpBUuNH8rngscs37NAc0I2ytFqpxV5HbAZI4uNOqRD4GG4+qP2BtBJv9C3DC8PwGx54Og7J
8Bu4PoUorl86w6dNx0a64QcjWn5GnBRf+1q1XrjayjNsTGPwoNFc03mXgnzKftuSpIh9MrEdp0tP
tz1vUgR/4YaEi/F83EoezHQ2DoRVElBW/w/UlIGSIe2aNCJ+Le3Kt3RHdqwESr6Puosws33ZGkBc
10+ISe2G0z2QpV+p0suzM1wnsJG1WhCh2AB6tnNmNrE2L3nPW1HKfkp6vgPTGWSMOsyzyofSjTnF
EH7GhszaYu6gex+DWJZkulxdJioq8c4NzaP8gH69HibwwaSwGKsoOZCbez4uT4VMOQWd9IlZYitr
CFt3ptEuxxbR0MrrWY+/pfzCTC1qOcsjjInrOMq2poBgTRQKB6Ymr5jKZRtwbDXb/xHr5ZRqoZVx
ZgtsSAa91GQfHOl3DIcey41b1ICUVqQ9VwiNodq2llSvdRFLcU7J/m/vJWc9A7Z02bhkHJLIQfbE
pYLjPmjwKqOEcyWOfoLgyvCR/vEN9LT9RPaD19WAJlEpNeX1Qa9W2HoxrMuMkJ52sc7Mlr77Q+sE
/1Nb+I95o+QH5Q07fDiFNS4NrKjJ+UWoRZKRsw8Dopf1XnAsjII3+8gtVqVznGPcfsIVKBqleYsh
8ProIIfknPqBUUV49CKy6xF3MGgYTeOC7/lme/TVYx4d5Y4k2sjAgzaeS/TCFL7wxkhQC/EKm988
YylHWFxTJS3jlhttKTEa1eGyqJvoPxMtr3pxiduxH03fqA4kfWPn5esNc7Lw9B9ecMIjaEoaUMXK
br8y2GnrrCWmFE7W+hjsws1Wrh5DB7aCAxBoZ6wT1owdkpRdyFuaQhMRmY3b2e6b2T73plhQ+2Xd
8aFrldR3XHyz6mgV0imo2bWD17Qabo3yTrQYrVtyRohfpiQWvtln4B5Sxp03k6dGmW3S4Ns4Njzj
KFrOxDLvxSJw2HG6pHyZCmBM5Sc+PETNGKFgJ9HDQ7qJ4qh59Hp1Bxr19VkizsuI2BvviFHO7A+f
KBj/kElBszSTvLbZCHqMatujG3TwDN13scpZHPEI8rfpun93eVYGxSz7vMobjnI3XDE2sNjvyj+y
+SKdvEM3h2Xgl5EOpjvBAdeL65lWGBBAQ6h/gvDZp+EBnL6CwOfhKrhAS3w0ASSTHT4ExolNzMOZ
PDdo8RGtdUbkyd/VaKzyMJffYlOveLXL+pj94/yLcskQUoiREC1cXBy1Pqf0oClr2ZvWg+Ga/OSI
G3YSBQRXyTdDrksv4vVz8VTJnfoq4nT8QYAwcqRM12cpkGHITG+uATYjbYoyCgG22uFHx81CrQ0/
Y/P/E/TAehpBodcwdaSbkazJiB/STKo5C1BN+WHCIpiUzSj9hB/pk1a2qN8hImGflnIFkP86BKfB
xe06PEga3cpLmo7mizUkmsJtZ7pXbjH4lU8g9nUYg6F9npy3ephkhcmgy/bMJIX2aVsp2I8XCdUG
5bVYXaA+ikUqPbCQoqUyYaRKOuQtV16Of6+TR+7UQzMmdhFhBr4thr33ba6zXD3Bk3QDKcHRTKcr
jC26LnNVnsx0fXcP0cGBwKo7qt/DwOZ8+s6WdZYUEEZTsskGpZTgnjVMZYFYQeQ/Bg+2UYUUvOmI
aZjlCkEmCtrYTOg14Pjh0jiRG+9etF5Z8JjEKORYeuHmE+hh5AmwhgRFOFAhlbOPxAtVaqyVJJ4m
HDursNpsb9K2GKJZEomlxTVkfiXg/MZafqwB1UaUX20JhRMJGzO5GfBniHq/qiYCmyvIiEEL1mPU
GZtXXX8ypzaHlOs9xk3XJDlScs0FsMb/h/SZ78RW7vlT4WHtX9K1bpW4tysdcpn6GdoYVLgXyG0c
XpQap9qtaGh/2qb6xQxhItfsyD2mvxzV5kS4zgPjThP5MfO8lbBEcaEBoKP/fpYc5a7YUrkc9zy6
SrFq8UTiq1IA0i3piieJQNx6dtmqdFETZmQYyUIxc4MJ5OdpJD6un3fR27d3dRv8/NL2aSrWV57+
UAx6XkY8BQhvhL0JTIuPfbpDRghg3tiaqSVeL2+iHsWVxAeuzIc8+jrM4XK+5KdWty/g+hceJX2G
hvbYmTQRVtzv+lPNy/UsO4jqZi0QPqBDVNGpx0METh+N1GiJzPChVZeVaNhMRQc318msd2eJiBH8
RtRd0lkgCwQa4sEcKGkz40O6ZyJufivlDMuqyjWve02VwS2v0p8r+ny1PiZdKIdg4LK+1GhN/cIy
uX5U3TJrjvuQnd5oDcpiUy77tE9gXq8KzbVGg6q2jqQ9OtmUkUic1LHKyybYIcZOfIfm/oXNWFS8
wvsnqAxPS20AqObn0F+ExhS6wzfeBUX/e/NJ2Gu+bUEzRewzapxi1OZ4pBt5C9kE1PmQZDhhmRhH
mpwCRtwFrm/oUAe4E/rfYxDLu2IIco2nqIY44ySYAFOK2vdp9ItGJaiDAStL1x0/rHqvggf+jrIO
1nTyhun5PMaOodYYlDLG2k24CIO3N3Yj9nteWivER3+qG3ev47/yEU7N8TIIhLnP8dxzaseNpeR0
0dFCUjI60KP01WGOLH2QpYvpZV8Qh5vFLtNfwrG57fJMldihq6IAbd/dQRD6KfqYH50ZF9R9mhi1
7t7DEzmy3tIK9zP9qbGtDOnp/T1Ha1sk9R/gGdeUd3CEwxRWJy15rsqm88gLt7JTZI21hJRtmspL
oaIRAnK4MS9T7M0jrI7/WPL56Z1UCsUQfqtHoRE946RqqTXHBqsNjSbQMddevr7FdT1JT9Pnnqot
8C1/K9HNaG1NNs4s+FRSJvf//tbNqHdBKigUVZnl8TZ3ALSpKFHB4BmaV6sB9M4mAFQN7UriVraB
fZ7q+di7quRc6xRIGu2PZsNUfP/QOrglot9u60cXX9l5fBDY7Q4oxUw26RSo03s8tftVQW1OhyTB
ZRy688+KuJvMGg/5Q6tcOpkFeN53oYA0wiazJ07GhsMq9TTy7KTbi0COxorh69FIJdP4WfSPK7Et
p0L1O9LZOxGsMNYNcOfr+abfwN0V8GHYOxOu/HN8S/FJggTP8GaDT5HU4SGhng9D255xVfQKE0Xj
GDxox/tubDm264GZTLNiHaiimzMfg2AlMyk/m+ypMhZglpOGsWq+TzQyK/ZdUAZa0hQi6sTAVFJs
846DDe17oywtWgbRwqwMSefXuIo1S8kEbuWSGd5UfwifykDB52Iq8Vo5mD0CHyd9Id3lVvWzvwL8
Rf5ZocZpYEas5tfRfRz3DZQVAFdYH6zMJMsqF8LHyvG4rt079nBZmdzemWlt/Pap4WT4z9IfnI0O
mFbYQpTNheoTStNb4PpaPg2wTAQLDOKU7+zgEELMlyqsTb4JMIAnpGdPW1CEWTJViejUnr1j2Lve
ovgS5PK2Z5qapY/MljseklekqyCeAK4lJ5XIcES4fhgBz2F2tGiHqs02jqNMrib5IEaf8ye2rylX
64GTeQ+o5Kwx0uZiV04DVN3zWRFG018vNTAFCXoV1TEv2xN5IA55kZ5He6SM5kQV19zysM4jpL/z
8xs7ILOFY6BYVgvVeNSTHLNgYjS/MxSYomnz+EnNjdNIoRtUtbEVvoVv2jQb2DnQYh/HkfD2iFQk
P7xEEXE0P0kk8v6TAjUrJ8MSdYfNip1HoCkluU/BrEHc7ss12NE2rxDY6k2alWMotDnQ5q12ifxv
FgYG4l8LfXulbPKeShSLgtK9xfWSEYksAGdvw7DY6Tv1h+7V82iaeIUzoNZ0Bn5V1PTu8mksMpGs
zlbMt/or9DC+etJ7VRAxvr0lTW4TBiNjeK5uMaLfk/7B8NokkP89zLbm2FwOg8eebRzPNc12trFn
AMAOgcHCKYmP0F15PVUwk3D/fLtnxWh6U5A6pbWmq2NDyQGxfTK6/aMOKcBrejsubJa2zQ9GRPNt
E/y7DhooYC3j5JrE85a4mESkMZNEObQeWb8ck0NU0bfHOMA1yMVHjJWTnDHj6f49TbWsx6K5ZiCZ
cXgTelxTriX/1tjMKUQf0BbD5rKas/V1qe7+hb+a4s+TsLSSxJMtgwMUKlsAPbdCsaal48nhpEf6
2Xg2GMzRJUingVt2/SaWIWkpy/+fWodMPIiyMd/hsuhWQ3LWJK08Ie3cjpSuKaGW+6HqDjHhfmfx
mIfo0OA20N8MqU9Yqmr2Ikty2NFM+SOceusHZO6w7X8q+cjxQeizryzVhQorHIX3X1Gt/NcEhxMc
Lhf+VJM/v7Ee6x91wFP7mXql8SURe/Da6i2lN2wX96BbxQ3eW7kGTUCS1ciStPA+cOrH5YoMF5ad
6aJ3KYSA+1x4xaM2lC2W3gftX+RVjzL2r4fkswRpLnmuGKlKNJRsXlfKWkiF7LKqbWGBkxIpLtWo
sYGGSoO5sgDqNHItcIESoxEVL/XuRaDVgA6yqyEVBRjMkrP59CeYNbUZOWspVRfQdbgBRA/zXKOn
YX9/OUAEcagUhvUoOKDv2eHhl20zjLKSiqOIxumbMIB1sCYw/F4grzWPCbcbKDK19nY3+qaud0v/
wvAi7yR27qMpI8KdiuQxapNsL6kl7n2iBw6zOG9EkMshZOCvOSlAGnSif4jC7ZWI+j8XKjU8uyWw
y57iK16DmtHEfn25xJs0ttMv4Xwbi52Y2H9twccxWWoCC+c3/zBpYIE6vZ+byv9IiTB1cg5fhy2P
TmNcpZRolYptVtREP1oiWYUk2Lty74AAg7ZyxpEZtqz0dJnV86lqU1xeGp1Sz4MpE1W+hj6V8Bjo
RII+4dlv+2tkL+MnYveWYh5dy9Zal9EfGPOtOMNRWUhRwqjpJPxdHTuMAlWpLbTCrvz8ujGiYWXx
CmAY8vfyvBZM1PR1X0keEaOefHP5a0p/McaLa70DxJrvxM1xZAxRFcB4T0Kv4Bqk7rSsGHeAuUCz
EkVGcAAv+PclA1qhWiW5QOIesWcg6ZIR+ZNWmfgKQVg0QHmKoMX7DL/hWTLzt0kqKouVhP8WROFG
ohOzoX8hgqwUwSVDqVVvo1CPG5CLgMqEip0QN7L/0cN81OhIcX/n+Wdhh5LBUtn4Whh0bubCAolA
vQwdsRhiZMOSPkBzOGH6dItvszkWGOuZ/+sMMpxTpomKYFnGEI2tsvTFpPCkNftrLDWrJF/R5c0/
4vjFCmg05inz+qKNNL2DFsowGSJc+G4iNnvZ7ZYCbHlo7q2HlEzkcSJnp2pUikZpIIslscqWVRT5
k7K1/d7MiIIcJS83EqI2FmyGAicVVuMzsoxAlkZ0PUePsysZRHIz3i5GYrD1lyFT7/AgdvQs/Gga
IwEFtbzXw0fecQS61mnnmy3xZ4Jg7T/442jusgik7m4zPm/gtMbzOz9hMMilWZ8Mx5kakSl7IVjy
LDmlzj3WEbeNfPNF3orbMIe95VQ9oVVH7UQAHBgae/ScCXiCl+LfvGaCZEfbM++fqwyERW807uZE
RYBVPNMoJ8gHP5VVc3VGJHQsJR0ht8wbPkHVmW+F5kT0j5Fqc3cHaOWiZGRkJbbQGbNFcAre5oVF
osha1L8yPH+Tmsyoer8zO184VC+HEDU/bFLUbdUjCDbaiMhVGpRRtdt7zBYRafGymBQjD1cn8YDQ
Yb5VwZuxL+XwRV1QU2cyRltFnwTruuPvdG8+B9Km3d9SEzS4vv3H4iVQ8Bre1zs7gMo1nNHvs9kT
7rHe9AwAbTwrSvaWQkmVVdrTDnqH6QzauhEHoj6xyQEuS+UnCUbatzDtpnCQwW6PHmMnCJMzPiQA
qamZT6aQSwVR4gturXd9VVp093LYI+ntfwlEUMPpHK1AAXGyA5keiY74rN1hKv2EyPolt6cdvjsa
n+xW7Ir7JYUON+/lJLWg405gg/B5xcyqJHG8Ap/VeHh3zJDTNTYdGODFAZMOdfBOwq44EeD6X65D
HcnnEQ391a55DukBq0ap+SKBD/4B5tSSgtKyOnseQRSCioLsSiSeCAis/JK/zYWT3Wtk1hrtRbBB
apLHOqF5i0pEy1GcGvr3u+C/gcoNUIB2gUuAnUvgBia4xLx6b7hdIhnwgudydc3V2TQ2OaTIkF0d
gnZ+qJnrxvAhEDxzWzSBbaUaJzJVqGDQyzXzUzoS8cIZkruLhvDsksIZpRgmH/bfRpHwS/R9eeYO
UAtDVGH12EuKvTt6Z5bhwQtz9b5xOyfzb8WyCgBQ+GQhdx3Qa4zdNKrQvNMf3ufxc5slQN7Fmz27
8QFBTeqBCdxqNldoFTcE9NG9iNVTUe7KlqkYjtQHpFDteMepDd7dV66nhglnDeZgsKokjWtnYnxY
JeXvh44AAj3qkHJGiDDpvMKhRnSeHAu8PMsPXcBZ8kBkJDs8mtdZh1jxeGQ+dO6nonOqkXWs0wos
lDZQI7I/9qIknGiH3/HJd8OL8mrEgo4b/s9UMq0jr2e+K5MrjV/ofeu2eJcbx9rxfiEH5hOfxpTb
LkEI5Eh8HGcQmjjfXkcCVfXphR0aDQnczOhWhhAyUwWGkn6d006mcqRgQZwPVDFuJhrQyqYLCd9N
a6lW9yyrHLOqmDPjl6i36xLGcMuifqZ9rP+N+ooueOE3bOlVS3v9ckZUWb/P/XWrEjbHOmgmKFpj
0WZuC9TY9OD/obCoXkktBWs2JrCkBIFzFxRWl82rAP9NhR93okVLI8bBadJMwb1SibDQ8fG81ngK
7VfAc/XHzxxFDAjuG0DWZZ7geIKo3N8F7qAJ+xnYzWuPWDEBp2PLDNfFKoBb2yOJ+GW2NzdQVQ5X
tFtb4g7jWH4DIKX7fz/B5iNZNwlCDZZ9H7i09Qvs//CYa/aVLO+CojI1EOD5Gc8gnyma6lEwjeRZ
+5zLALmCs796xh0L6HO7AKjfSSiBFL6TQtpVDQdHmvCyLrHzIeh5g3vwOIOkFWMa2MZyc0lpXBC0
Md6Myi6LSrCw3S+bLEm/85E+b5ughr60bGNh0twg87mRN3eCi+0fxq3I3lVFugk9t+DyHAxXXc59
/vpJJp3yIAZU79cg0vob/0iX0NzfYgEhBINO0+D/wvHrRbz4xlBP0ZGgPOgfVuXd/MsDXHH/Jj6j
McykW94+wChDSUTBPCwLOfSmbHVZR4WmoHzozB6K/GPsZfKfv2mMnQRKNtG3lT/FoM3Id8H35iOL
W8TRBt7ArtVfR8yvrVEJle1lPxtF3tf6S6BlJhkWmSqX27pVB+Siz29sMEYQ2rEHiezETyo8bd7v
QJj3Mlj3njja4cKsGllbarHguv5O23nHaheU3IBgfAX9SkbaxkgxB3OlSraCJclAMf0fryca3Iwy
mc32k3RgbNfWWE8DK1ZyHEla+QrjYBs/f79rtfs2eM/MKg/gkANzPedk/jHrMnVxklSWwYqBAuy2
rCejrwD7e2eK+y+PrXeOXNLyOsfxCIyEjeONYAY/YqUilhjxZNcaBncGjWyoDMmAhBXndC4AKXjk
HZTTf6R2zbvrAwlh2j5YEk3PJl2UuoSs1oehxF95ekQXJ6b1VaPJtQkzB9v4x8w1H4aSh3+NVVlh
kU/iS+LSgO2SGugBZnLGmZhLy0JTGrtUkeBFaU9LdIZ+LrgUm9Px+oSVCHo3BGZT6qEV2uxAtak5
AJvWmOPC3TOPHCYnEjdYjgzyl/Wrs7nWkkhL6KdiRhxqZFIDD2G9scx1n5RqD2oKtprTEfpANSSX
Upwm4kqSvcsxBoqxZSQDsbJsMHiwSw6u/WX6pU9gnzzF2HoPJcC5sSD2sJq9JagHcztJvXpFtNBV
DvBDDNcHRR50WHKEdgjkaiCz32Oypmr/8Xk3yDZ/MTSKpIzENW2U6cTB/RNXQY3W8k80ZodAPLrC
GUp4hOGvFsN19q4sjP90ILFHiUo483xO6VI+TEC2fzM7TRWQqBzwCtaEjaN3xgq49GRURsvydVdD
KYO9NqR1E71rEbwRJVrLuPSPROmeUXTED+oFygQ1kJsmfhFKgs7JOsXob87s1y+2E1oFUCH0KXld
8+cXA0abHbyACa7WNgPXqXAtAYkNvjiLQ6gfO9kyn1q7Toy+5oHBI3wwz3myZQxUaeYEvTQ4sjoo
XwdY6fhkFqMkVIqVsBugxnkJJT6bo9H6v3DKYR9cB8OZX2tnkC2zdQQzDDZ9olww1YXfvN36K6g+
gFFZ8HrLMEmApz6iLJ/2wObQpZnyE0ebns76wRfX0PqdJFK85p3/g6ICVHz6UaDIeWcHH6Sg3Z6M
+FcB3tKhoV5HTAVDW3UFoaLaFkEai9t/+rRABfwCCB3U2xTUUvEUhIr2YaIP3QG8dFJnbkYIkeAe
CjwsVJA7t6EGYg3FFkYptGOYeTLdXQJ+EkeE8+5A0FuGulbG4oxA5dk/vKeSEyV7PyAZDuw1J8hU
LSI21IuqTkp0IUXylX5X542sdccFNbH1zgZTkvtzFpPU9FL0TGvgQtxpmcygynq05qrKATZ+wUhq
/TEviTys5AOZgfNuVz3NlQkJoMsw52QdJd/5DHpXmGnlWLpzB4cpSZiLF/05cU/IT+NSi5fcf98c
eZrFZtGQr/YrXVL7DtbmHvluqW5AXnLYHxdINNCJp03wCKil+mZ1irdsyS/V8W0ujDgpShdrGT3E
5RLfKOpyZo19SwvTVZzuNuZhqSYbpoRlZNY6XDgdjRrwE1Ckco6leI9uyrTnEKBzla+R0Sl63ryZ
ZjodTtRqxTW3q4ViCaefcPMlgjnKRVqcQtRtbj/etwPgRR/+gWP1ca5jdHGi+23WIoEzFtTqs0eG
1fxgidZka8EvHyP3Gq6vBmvOENTIO+UTLZh1aT4qL5kw6cPH+ZztnXS86FrH9o8tRGASDLVNayiy
VVFMEVmINL3pbs1vcWQotGLPlNTbKOSUQlh//AqUXMCRSSzLXb3N7JUedqM8REc4TbcLGAlxrC2y
MmFsCoOGKnRbLnXh29/dp8yXJ9FACN4QVqr+Yq1vznSHEMRI5R3tSIkqS0PwJ3H4LfgQT1hc8BPM
PKOXm52LygKGovfw3pTE+QDl6zQWf8Ibr3PN4a38NBvcnWo9AcOx3t/2PYigfroBHoU9XPsBpLlO
Cm1r/cvlI8N3zrs1nKEXBwB4xEtxRbb/dKV8cH1A0RsYnTHBjeyWiIZzKJnqYudnplITaTEF9Dy4
h124P+dQ21vovEWaXVhcDkSbv1nvsCEvUfWTKEddD61U6t/gFxztjaLYkUdh6iIsc2Cz4fkP4IzZ
FWZ0PDhDfFse+p9DoH+YAb9QSkY1hpCiNiGf87iRLtHMI1IvChN/afiu2NS/vD9b6OqJOwJ/YKbm
sEgD4mwHNO47W8GzGUahCTAoYwyumG7D1FKJRW4/FKIKTx7959V+N14x2cEt4RtBtqC1wrBUHYp7
0/ruN9pwHLMhJmCNE9oHU6VKQHhCGFDd/LHm0fdGFG/Rg29bpSl3QZLT+YnXqRwhYpbtnAwnG/gs
rU7QGFpFS5eo40OcklwZUvMSAL0hoAZA7jtDr4OCBv6VA/vsGLgIedn/fjw9m26MkyKMALiuIkdH
+fObPk4fri5oB4qplr1MvIw4mklYpYNbVQ1wwckMaTuTJeXN670ICqYSf5NdmXme7Wa3ccVrrs6q
tJECHsXaUBha0y/S/9v/lGIySfHuRk8HbtQ63AMbx/RET6aS+0p9B74vKNRLmIWffkP1Eb6JeuJz
iVOTZJrC6MbAnhkSVPVEr3CLNP67LPjgOCH83qESb4fi7pp0R6xFv8SjYdZ798pk1+6wQwkAzNpA
ujskrpdx++ySE63xvZq+MsvF5HixmP7BsIkQ08S8R32+1BCXTIGWnhTErMlw4ibDVtXoLEM985La
aDztycM/bkzTQmAZzWsQuob4GgZ5CDzOEb9FwJw0BlebuInukMx0CwDLgMLXRz7ZLyK8Ho+cKSOY
6S9gzD6rsUjBtMTez6a+kZW+hnLaDxvYoiQVLIFokdo2pS2Z2rFsw5NAy7UpegXtdl5s+7ZnLnH5
3yPHXNu6GKA/uY9jrxeq3oaBWG1ymbXbZf8sU/afr/IUtqCIJFEwsxe+K+9GenjckDFu0Ls1lfvm
OA3eZkZgPDMgiVoFpH6vYKIBGEqVD6xLA8MJrWJrzp0beSuTBeKVXZSZatM1cppPtsrbY57Fm2By
UoFEte1vbyLwx72VHrYTNwQJS0/z/cvQuW/F8KE68i9wzMDVoIXf7cAmiRCL4Cpx8RSEK3Aqrcwz
yP5WX61rYcjvwbAqTJS7C5P5q89y/iiugw+psJkQlP3A2LcwvL3yiHSEi+zIf+y2bmO6IvAnJi6P
gJNfWhl8iAgdhyV13BwwT0q1xYS4O4F2QT1gem05mA87MbHWL/kwBaJ1/Izo3NdxtdvhPFHzAkzf
SGHbZ+hlFK9lEDiy1UMDjI1WHReykv56flDyesoJIrMZ2QRwbuA8JAnqKxKHhroFGY/1sB/qw5Xe
5gtRqQDotnrzSE81TDrtkYR2dAI2EcmB9guI2XeY/0mFn6BHYTNDfzUXG7g9XTmcK1BABgO/LReK
iAwYDpGSGZZMnC0NOtL7BVzITYAYx4P2UXHLwmsuZoIJOr4OoN7DoFeZR/kvDi/4DTkJHKSiZ7zF
893+jHeICcgdZpx8ph8FrMB/MkPkGb2RxUrV9Fksp2b5Z7uIMGAZNXQC6F7B5nfVnPqTjxoSc6Or
iSaA0eHaLr19INMnfHyTP8kWBigQlJow0jujPTGO8B8Ot8A62cw1RSRp35ejsmBQpmsfF3xqzsN3
Tdnh/tyexahKuwvlbjTHd5QkXTd0zlg5nV+tKJXrtX77PjVzJomH2jGz6kR/Gba/PXNaw+5QYKRI
2XbuB/0pDBNb8cPFP9XY1+1hNH0ShTAJDLv2vtd+ykXbKMp5k/AhhlyhVVjwXJHPkYKZebESoxi4
rj8/c7V0U50aOjSZW+0UkLzy5mv3hT9HlRfoQrgFkg0d1kAw4IoORQwCLRqNqs694J8W4FpKxp/w
tWKgyNqQ/GRcSrTKFLNMugfSMXVrjVdUH7gjZpghbVvheH3ZM5UQwaJwar4YDvsfra63fBYKTV6e
yPo7BzdaAjH1hqDJDskkV0c/3mQl6tDRhI0qUE57Ffc29euLvEpuRM7T8vupWutzQpXxkRp0PBKb
KY4lAYNCpKv9EwJGhroyZsvgT47koSJ8CYmuukemqDEzoRM4nLQAA17iFD5ysfnTy6qdz4VMzMvR
vTs9PAbjrZdlmf3ytFiPEa8LQtjd+o3tpqbyt0ZucXNJ0SDgLY4Ju7WY9xvSSGcB5cGK8xToPQzQ
AZIKaV34t0szNmkkm58dk2lJ4huzP+cj/4fuP36TDdVmRqrEXY2LRvwKTcuvKAwGWFZsQPH1+lxT
lUo7gJYxwKdbn53oz3e4++GFV8uaSU2eXSAgxfcDROr27VGy89iODtYSf8+n3F0d24B76goXHXdn
2DfWdougN5x/7L58l2rLV10xqrX7HU3iiWZFRsJkcyWpJOMVqQjAB/rB2s7lYgfMnM1iaDydyuUl
mrpTJhWrOKxPw/lOixzthzlisdzTap4XveAfEF2pCh8l7PZDrgRbaeD+f+oXxH/RXg//utV0S6dD
WbmmZwc6bvTTnRv9IMFWKgQqXyEoH3/nwFPzFeZs2shQjbBsWVyIarVL3XPvlpR0+UFjesj0OrVH
58H6JnGl8RMERYAHFsXy+SrHQ84dWOh1BYlB1K+xJvkcAUkhOtzzSI6XR6uFgssgpT4GlqxnDiNi
n+mB8hD+PJe3e3RGl/JURUo/6ZprLo8SxYc61FdV9aituzZK5XQt+EMUo4RB8bUuE27NjctbXOaU
Udwa+yFHRJO0N/TuOn2XpbkUeenXIorTWuXau0t2wGdJvbh+jPxrKp9rGmA1u2KXElWIHssuSs8F
L/NSXLXz8aAqDK7IzjcEIe4T8YR/Mc0K3VidbJUQPRG6I8P4NuPZeR/eHUxOei8ShLBdKTrTc8Ei
Eh1mM6PDqUfU4FMwNSB1E7Z3U9rUx4cAuYR65jmbAtgVpA3qtq6rNvDLBG6wA0EefNhefvBzL1ok
V1/xvGzX7lLF8lqYE9pySneD3OUF0vDhGMe3sC3MmaxXuwQ6IjSg7J5gaRhKNNZXFLmIRgJfHKhG
9v4yNvbxZzaySmawLsvYAfVskr9AHIlWcM3sP8Jv73Yo4NkgEg1+37HMqaiwf7305VFprnJm6g7E
f5wTC5XQS8qCm2WQTCpkyonMMJRDM899DhP1w5METTK5TYtBC4Fv/gNRoDVaECZVVEwpAynZEI8q
4d9HcdkJi8HCM4eFN0qw3I093qI+AniQA/qFwV68tPk+bNlr2R2uhui9kYMyGx7KzSNWXzb8ivAQ
SwE1uKjm5rEkdYUVNQVHhxvU2ZBeTCvRU+X7/a/KCnlG67443OUrKPqgFXnedVLld6jJmMWdBN9Y
IM59kwmIUADLsmEyIX0WkK65XLle8Cqo+i9NsTSyVf9cT0pcSH8BFMMFlti52Un1zU+IKjE7T1iO
yby+ETCLG7vYDnO0WIu28yxpAHd6UMpXeta8Ls3pNL3knH4PcMOljGFum4c1+A0uXaEkC9+MG7GP
7wWZsIuXsipzpbZ1xc1S0elS6OZq4BayamYnBYH5pEf2QvZmu5/NLKBvw3b9BFsFE6Wg1KBk5eWN
oS9MbHBV1NkUu849mK7yRzirph4y/NchzsxZcLDJ22aol9lay2u4+aWwWErt933rbm2X5chBqQdB
P/Or+F4pH6TvbmVAkAcG3NtVLNr0Gx27Fm5okhFC0rXCraP992ZxZ9sQppOR2UDZzUcDyZG9LWQI
idh6oG4gPeImCa6aIsE5qXXxVvK1DGq2CR0lCbdlbLanawjMOlyx3jxegV0E3dNdMYvG5B1D9fzC
y79bxXOV8XZewHE7oapzX0ZbB+hajHGk4Y883lfuhEyBPDX6aoKeeoR/yMp9Lev1RExlSD25oPEv
ncgKOLDfc0yc3srxQFgDQIw4GbmhCK81su3Jsx3eUHJRelkye5PaR8ccf1yY8qPSXFDhEAiOyION
d9qZ2Fgv5jU4J6y82yu0ckNTNqPyOWJdNpp3usOFKqAzpE599ReJ/pHbtB+F8lotLJGjUW/krpuu
q52zl/HhIqzAhDY2DxVy+BEzRjK10dnfGtF6//WvPqpjsV2NPwBKxCPyw1qU1BZTn0f0iNQmSzoe
8bDOgnaCpA2LFQu3nF8XN24j5iYXk9oehIdeabZsJjJ7HodSMR/8Zrvw6mN257xh+pOsNHJE+ERC
O5hzPZoiyJueRL4D5e/ujcuVz3+EO4ORxE1YE4V0HQl16Mcgi9FLHMbNoYL0HwotmxAsPXwqROfu
wY9WwMnCKpQzRAoNzTzNZ+LPDf8uEe1UziqtSEnymk2Yf2f/uOb6duHyVLlU4TAa4G3Y0JS0mcVA
F+wJfihGd2Q5aYL3QYE6Y8bLW43KB5fYgy1G/5+uVhXLrQD1cT6MSnfcZuDd3fQT6IJM6QfQ4n/x
YVYSFz0wLEGq7AJY9vqwwwc38ATS1uWlTcqmpCkgIX9ZmoY20YuI1y6suhX7QrEZutO/+jbblr8s
OAuLMFuK+EsuF7n8i1GwyL5qJmeDWotCelcJBfp+NpRrw3OaT64Z/FWz/r6Ql+ohaLc3EW8OA7fh
4ml4YLsOVShsdgrSYXjnYXRDAtWV1vbbex+BPsDDV9U6RuWRMw9PgPM3pg5dL2qsxk6Pvpq/lmIz
QEXMYE83d2j/8+ZGoDhZVr3q6LBYI1gDY3edh47YCaEsFAgh64/PtzA/SnXPvL3/U7c7f4qUQ2Dh
xhPjaQgzzijhu/ewPTNj5OVTEtGZm7k6zbMQ+AcvhFfLFR7/LLtQL8jHRccW4a4d6pmzogXq5ZU0
aiVr8q6v/kjWCNDKDAXbnKat9HPH6B2WRMIoMnovdETGzSpQ2KSjg/J7p/bBz5xlBzEPspuqOhuE
mmpCcc/8asfDhk+fTTmYY2dVW9BudoAwy46q0QM+dBQpBJE1hHWDkF79t12Ixdanf7Pezh7CotqG
xA9MxHmWbbMmUvmRU7jIsj8qDHnR2xxUS+7KhcxI8H2qzxdeX2b0TMLcpSzKIVTcPMVzhW624K59
speDL9OQjOgpOxxfyT8ljKsOCv2xCDihRQW4oDQ/FF58OXxd5sO30KnelIylSg+9qFivMjRY09jE
/7XeCwgDs/gw8jWTaRHDnn5GWabdAWOa7b4QzBG+h6GHhMdRHIKRkC7cGHro4zijp1kgpaaev80r
Px+TW4W4/lZQsR6qkb2lRpnXc/sbwppdzScKbN7AUdwA0qKPgQTrOxmuClYV0P63h3/k9TZfWz8K
K6GOPfgqY4UuRwfmJvAuwyA8D3ifmCfzLC8vSXPaYH/2nveL5RFYWV7sBusOIjrrSiJtyQAIB/uS
xsblMChHfpZMQp9bFPap+lSbOZfchiQiEZAr8nyl5TO2ESxaOJdx18VsHXhLq0nqTJEG8pjXPL6q
ffRxHOaC/ZbDREyqFtFaf4SGp4kisu6vIOLPNF4ckv1CHSWn2aEhYfpMGmLv2usWpmNP9Ln7BQAG
sXX/HfKKUnsm18Xlme0jXHEIVEzAsb8/CXDdn0LfLV+VV3vBSw0EZQTJLD6os0OOEt9ITq2jCudm
ESUZXHfU3xIBjmqThsMx/MbeXNHKu22wNhoTwT8j2eNL1+B0i2EAqcoE8k7DpHrWVfG4THkSoHKW
pGkR4KADa7TRTMmNtqtM8+SN1y0X2cUuKTgcaE1USzSn2tNYm0oXYDdZiKXLSbo8fZtECMffAm/f
+X1s2w/9aQkOLRIc4+7MVr5Vm7j6OOnR+xM7RpOofi0erRpT6XeCJuja+ku0Jq9nt6AclV/s9E3p
XhDV4O3pnzSBuV+B14cclZXOMGyfR3Tl9N4SVIpgVO7vFdSkjK8Jw1q998s0S8pBDA0z/CrNVniV
Dp4oThc6ZO9IvIy5b6z0dLmxOpowtSMzgKY0K0oVTDCK5WEcSBv9acMAfWuBDDEngp+BPKRrgVUw
4KDzzIGr8wwWSwLBLsddz65dQBr802uoVhA5fEe3erDN8h13EJohIfcr7jDu5foZxnaFmdxSBjTe
Q+gISs4CICwGTVAh0aBmKdvC0EZljE/MKi/G6z2wTmxJ+422Nl0nvmPo4lwNNDNbAeKAmmlJR529
M8b4nCG+ZQXpabuOCuMXh0Blm2K/T2DK3EG+dNA+p0ol29Ze1ff7xA3ojV+CZLx62JdC2VUhkZGI
rVPcrhXYtzwNrU1pwzdpvvZLFmacvQ2GMFDcHWzFI+gNxYIW7O2aG291WYxm9JP07Y5fts3OewgP
nuFgEdArXIyUzDvIBIHgTd8igsBOw/6c/A1QVrTpnOjxHjY2WkrpmuR3WTQvZfpVzYd0q4H0+9b5
/dEY/oum0mH8VdEQ6cJbQFepI3pNVyyRbaWkCZUQhO0mTlRo/0l411Hi6hHVoWMl9gb3nuUHvUsd
VOVCnxqX1w2yyiLa40ENECNqLChSTFbXSig2+QPOXn+WOhu/k2WUVHsNWqONYCZC6mGWcX6OukiF
M+CPM63qOGTIRBNGECNC4CgaA9RTrLFqOULUNLqFS0KdaKiqNMhUubfoaCQQMiR661aZwz9UDQhj
7V/zD76kVkOnMgSGaCyncy4MgJTXQ6sUHxFCjGbmlT7Zq3PrF9YNHe3vwn7D9g1uWRHNfCJC5NQ4
tTfBCuBHOuhLs59+4ngzRffcHYonIeURKeoz+0axlyOoYZ0SSXcet++qJbFgnRk0mmD2j+UibOZc
P3yE5wt1luGuk6LvtERr+wQkIVuInf0q96jYe/ayiKe0JYEuuklFaHjpNnZBEqX0vOqXaDQUiH96
/BQmULgDbM3aw3+MiSWG4BPeCVot9W2Fx4sR2zOyCpmDC6iQANqFfHYKYKkwGt0bij8/+2qrjadh
OzP/12Enov1QywQ0bxtsUksZLArzpQjxXDw9BYJLZllhCu1LW3uae0ZVxmIPTmWVCellbGeWn3a/
Wi8TN5VhG3zcvwlXS+zEr+6BqYG6qXzaqOrgAWedkAfph4b6tm1hj/rlNvXdnirrKVyHboISQSRe
6ecaEeUIJ9GVDf57Ynji7RZE8PIpps/0q/MDjiZXeyxCcOUibRKR8Epz07Hgp65KpY4fR5jUm++N
1hyAVsL4OrMgxC98q7nDMsm/uqMciccXi8RQsHSA4XEWtoD+eOBYS6hmXMsafvZ1lWn3ar2l1Oo4
4Vu3IPTioyCIGFRtiTVwvdDhjgFLS8vNuTWIhFnY+N5h23F2GZlgI0q9yio649PDDm6So4+UB1iH
GHb/zHfQPCDFpgK7PYbGyN2VIa9bAXm1KGRCP5ObsLQVzN3HuevVKFRcf7z+hBhBeuabwCcWnn1K
x/+tsqJ2D0ng6UoLj12V7xb+2LVijh5QYWBw1uT+cb2Wy4gc10qca4R9fwq9YCGsSdkHwMBE4SaU
Y4xvAV0qEemnAakn7m0ACffPgJDeTcHkHkD0hpYRulil/L0uRUuLb/iKlwuXxg/mBvDk6tuwxYTt
DWF3ne2lxTjxI7KajAk0J8OEjKlSC16kBInjpv0WNApHdoVrVE3ycMxKAnwGuVwuzTf+/wYCvdnd
zajqNRLW0Ouj5wRJnpBpr/tf1Kw0shXjZwDvaT2MuvGB132QMln6r7LP83YUZtre6h9FjKluStdR
hhGTlcSL9dQrqBUURwPhSFwz8Tna5Rtgyfq0jgLd3fDroysmdbklnfIn6vBnJsgt7z6ZKx4XoKbe
8/18H9nTONBSwuPj3m1EeEz+FNyHsgCORAMtcmW3V5dbZ2sshhNuibvLua7OvZrl46Q+AMWZhWDR
7B7rna2bk0aB6Rxb0SN4sd8EV3l8Vp4wamEyiBUVIyuxgkl0wKdsjGohVFxvohjcCxjXyl74SAGU
5qE7egyO41crHfLpzB+mzUaQfHKXJaxlnmEI3WSgC5Ad1nEZR7tHkf3JdbMGvTKROBNbDEIJGjFh
F6LaPdCxuJkijOPpf25ptgsfog/JaN/GTIoKIijiBdtF63PPtL+d/PPMhsVzs6TRL9OEt4s+TSOI
+4SlaLcn9eBlHCdeeazTY3Vsn3pgPu/41Cydz2DVCgK2USCy7NUQIvraOcakKwKNgASnL1UN/V0i
6e5wQei0mgkdchg68w+aS+k47xkvW13bgjfgsheo3aA0WT385DdXLRCfMbp8Y990BAcyyFuEP/DZ
egUourHgllFrSTb73GOQIzgJ44iUu9LhJk/IPm6yTBtiM3Dg/VKcMgj4NdIykYVkq7rhRg5SpXLp
zGbha6Oek2uJRXMr3H0eDYfAL7pO6VspBhgP6kWjSvZqepTi+z7thJFeP5pYoLUUBu9/jJwDOxrd
vk2NNMvZJX1XnmiB555qwC9O/dsxz5NFjoR18UAV64A5fK7VvUQffdxOh4io+33aigw5oqwRZpzO
zvneJOnyVO3iTdQOdC6Wdfl3IpjTVkcqmnsricmvwCcUzAj70GhjmEdkzgh7NaGB/n7YoqRTyVAn
8yCFocx/RQVvznII4noCFuQbMDto8u77rb2vL74bUvlNHx3+RxQzzFbXfKN1QCLILe8tBMY63JuR
8shNhfqYyr+ABeItlvZrqpmrnz3HFkBLdW3+08Y/dWYYkktlXdbZ47eb//nHqvGteHdcVmBaRbFl
JlSiL+Vc2FBuZnfvBjfmyIByo/Y7nmnYCMf2fuZqm4Jpp5x8AQR3X0cYtkb3kq7ETLfH1bR0VMET
eOfCrJMjMpEzRIvE5shdyMMgKqEZvBWd6atsRitaYSN9SeLP8M7zvUdWX7uIMUyeiaZVT/nvaMex
9Kz8rL0hCfJG8rWElthVYSbpjaU7v0hRDOHqHK+cSPg2gyh6w8YvVI1ATAtJHq4WBSi7733oApvP
wsbtOSbovao0GQGK78wUWb2zlKGMEgEbRroKkxBJluKKQBdhR6YhsP9peuNZbu2qduvT4pA+DAIO
DU1FCFr+HcnvGJdq4LXa0bGLvVk/b5k6nehnFr1Qmj3xtvPCONxv7Ncjan6wGfZfd/oAS26/wYp+
kwpf+cnHjfQfzjhKn+w5IsQ/i0MfjtqIJ5bY4II3G2i4FoTPURg5k32esYrRoUZpRM8vY4vhG80J
QyAiHbkwlM9V3WBl9P0WCQzrhgJVNbbEyLfJJEwqq0c2xdTL9hI5rLuvn1OJuXEW3d9qqTNg8kIW
Oa+w2M94bhStmpRBJHNiSu9o6Lft84I5/bwKXoP7ugCxbA3Sg2AEvgme3uTClAC0dR7xIf1+M2v8
/ua3Ro5e3+ceMvgPeBsLj5kG4AklgQ+TAkkFrtzZyuYjUylxawRYQ8MQ61dl5nu1p13uvmGxlQ9y
rlHMoSNbI3YYfVwfHjqDQrR7H9CeYLLuDAV3QWHOQx2x5rXB/h/kwwKWiv8MnDECv9bnz5BOFUqa
r8VvwZtg0cyL996ZjniFrGgDii4UedG4e7vK4U75AgHRhDk2BGnNF5QIjiC+YPa/z+oa8zBBhKaR
rDR7FOm8RSxgKxJtT3ZEULSt3ZWTwtxW1mIA0zENP2gc+lnCgvaUSi/xysHp+8U9I3C9WRQHTTS3
OvJ3p/h6wdL4UjfVt2zmW03ldw5DsZwZJJxW8LPVbk2R/svulWLJ3thEC2YZgXQahh9XJxnNspvn
beV92bcVo721IyMqeE3a9e7dBguro5vn403wgX3REGocq5obyxR/hzomdQfTmkIGAE0zER+9TySr
jngWGWN7X5icpIEPtErkQalky75XYbvLlwErNLNdmWZ9iaz8DcRes8HJmNprK3S4fUAKwApVlx3m
gBUPzUROTCEVh8zKFWgZnQoiFQnYyEUuaOqWvhoin6b5ZwNrFia8Vxel+YhYOs1oF1l2hDEfpELi
jZyUEruWnPuI3kx+PCFF5+s2Bt6+fwbObKSwBtEhHB0vNIkUAYE+hA4YevvsgltFHNJtP6bP1Qvs
2LEbP6bu3OoPSD51Dcbf5nkKWC5uf45zQE0AVJp6rPTtTmvH6fQSFPNWXneyUClFBI7WbCvaqI5d
SFTXx6sVl8EIw2+//Ninzi25zWiwHdZo0ZxHPJepbGWAMWcDlMahGqiQHPcTS6V+fUBLtP5rTtXX
nlj7vmP+y0nDDAVxtehZGVV+L5pnj7eiUZIL2lcoo9ZP1QjC4pC9k2j16zp1euHk70J+JqLIdv0v
4pnvoDwcFdRtrXwYS1fimOUrfq0EawcAg9uuPZ0uRHjA+ZuTN+OyVSHk0mHF3Lchswy7klqtFeSa
GK5/4VzStN/G5yo11uR40sfyJDlgS0v0i/jDL7wsl51n9aMuVMsKxN6p9o22+07ubuAAjVpIONJ3
g3WAlx7EXMnkTDtxf4s3EbKQ3Ys8SexMUoPh+nSnBH99229u0ZPjJGL896C/F0ngwTu3izb9jGvy
xP/PgOGBtDVjLrV72b3O6L7DSzSdyFMCT7J6eLvVofOYIlGUKq+l6w3SgloKy4C38PzsMhr4mRh/
9nJSjvnfmjTiMpoDBmplBDi5NZkaYDuQMi+MCXotBBaaMHv9nH19WnrhqMTdqB0k+2I7slWKzpg1
Rr7NPJPP6uyp6v6L2PS/eHl0Rafbv//A2FpvgVqKKBKSWORH0hu2h+8gqWekUUasvz02ijnXvlbP
ttdLNa+4exZFRMQHb62/+zPwbP6F457bIHj1F3aVyAE3g4Jm6gohb2kjZbdxm+yHhWypaor64cn2
3i56JdsrEfuyU/dxUPeVP45EPq6jEvc+9Ek2Gy41go/At/6KYUjWEZWd81GQCy0wQ/nvyPNJvESG
SlXpRanZr6CRtQQNLP9Wdj9nQ2BFoXB/pXVz1uXA9Fm+/A5sycjGpicPrkicWnxRhk6Zd6K02UzJ
2Bvx1ZrOv3uPaE+iIJH9pah30r5CbUmNr5CfJoEptCMcQC8NOmxLsm21nkp9SHTyBi1XrrX5co/d
v4Lm2Oilb/dH1lz4B4+73B5mB1qPE/12yvNUdAztYeDPJKLbbtVldDihNFOe0cOFUHl7SXa2EjwV
ZDnCq1fJkkE7SK0ZJXhI6zqzWCWgDNVU62IBmYosaaNiEXvgiUNbSSYvpHTwkOBpIUlSZ1bS18jm
09/HxwfcindblkcrfV41IuBqUJ42skrLByfN52cp/d3Jjdlp/HHI2SbnISK0rQFCaxJBEciMPVDv
vNdHEV2roTh8BKrtQ8CE3w4AmMdOgAUrPFNdH+559KUEyA/+ZbQ/XlyvVFmXwI5lCKNDDXvTupTR
otWznquz5S9fhQcKtvMSlM8oWJLtWKhjHiEpFSnNYo8ozCTiPVYD8J1vh7b8Wr5YKD5qxKdkO8Lk
wAzl/Xwc3U4lG/FHWY3E4shae4T0TGjae2OQSVxUIISRKdvMioXApVsWrYm1VkcbGi88IvNk5HGq
lTVSiatVZaY1qpeZMOrbpHkgurdFCuPXh84vBMvBbXRsAZuasJYSH4gXu7lGS32xbWOG/ts8ET+y
Erd/6eEYGraVQMDFUcw9FeaTWIUGy+E1AYtMxOxaLKK1YC4PYP1T7wRC0phm5L41IT8AgrthUkup
3qlHCbaA9g6LwHa3yH5UNeWJGbxehVx3Cuqozn/yTL1i4JJBnZG2/8cRN5HlmiE9BG1dqIt1/WX1
Ffn3x6JQdL6rNXa83mSpMXCQov6wzWx/yQNX3DK70fsQ1AMkx9Cs+MPLuhYQc9jXd+vhAHgZJMdI
81/MCBsWJ1zt3+gE9FhvEBQE0+mpH7nq4B9TJcoi3VGzjptReqs3/+znkpxut0rJR5IDUIHzMAw2
5lhI3MPMmkYFC2dGUL5UrNPtNxqH3+LzDILkdFPLYWEwerde9OFgyvE1OUCbmlmJVKCO+sw+9k7M
blvOqjLf6tXrKhQdzV9pRQwOoYOl87oIWJYh4r25kchZNqXDvzBkkHY1yz4tTnjsdVh3uf6zCv4O
khREOZYhJHU4UoPBTW+gABcdd9rxVM0nlu26x42ecpZ49EJqyQlO/BGW26/ViBXnvGr5Iw9FW2Nl
9DeRLL9xwP4l+FnonPjNmMftOshjZcXww9YBWQHEcczv4Vb1Wx8BbDoSHumGfAmcnJpkEVrH/A50
9l1AGrTRA6W0GjJSZir4euuo9G3+3/jS3GGc4iE4Unl4Mxws4N1laFer5wz3j6f57EmIz/q7S9Ed
vHQf6F+5W4ow5l0I/w5SS0pT5HUVxP0PKJPLQ2qouBhiMV+srMmZ61JCwSksG2TLBwBYbTCF2Hoj
iH6X9+37heZ35AuDF5oz/puyLe/Xg0Dk2+Eiq2ZwMon8GPXiiAr75zYWzJzG78R/SQVoh4NTLio8
fAiT/CBwRR33ugMEnCYu0aIQOK4p7ra7aNKYo2agAcBZ1MylZADfLO1tsjTMBTmLl0WmLU0Imqys
8bQY7BwdTJMAk7USAA2whZGShTWCjCLLf4RWezshACE0Wi0Sqmg510593vC8rTHl1Y20KEAdKu4g
ObLLbfvTppFAwRPd2EHwHQXI7rvNZlNLsFv3B1b6uw6F9HWrqAKdcnCqmIqkMLBZF+SE6ccGthQK
kV0G6hCUpNg9fekOrsSttJ8rB30ySfXNG7jMMW4ZPW/Jeo1EkYBe4oBCTj8SvvrxPDb0nUNDF1rC
W04FyLlb1QWbFCOrxcKb18AxXElcDA3ctv/0cMbwU90OwnDbPvLkJdnydSOaQcEMRrsVqdVdJx8V
ID0nnpPgWVjvGVdvUULZbs71lDX91vVuZIdD5j4KFWJjnTiDeKMiXIpNN4ovmyI8pJ3NIYPYdnql
ypAcSLdLECt2qMdhplGQhWuqhthKxblxa2Plq+Jmx3vc5+NX+SCS4+V25C9SL/hRq7rVV6tOJ+9A
wnSyxt7jz0MbfXZGh0npzduJDjdgVarsYI1sP9Z4u8g7CeyGvMMYFRBuGzoubJxq8VKv2drhBZZK
hIutZsP8dTQnJ+2nqYwkx+GEI05EkNCvl+sUYbjgrg2hqrxEvliE4hpaSfZRwFVkduX+O5YdzD5w
F29uH42iykdfmz+v+yKsn9fNw5qrKbSeRyfEdh8pVV2DoNMe0Gj94SULPMSl4eaLYn4blwKdJqSt
iUVwSZ7FWIdVMvRblOY5veYhRh6Jw6SlsGMO9frt9bra3x8/AWbRFldMxC8GvROuqTagdsb2/MEs
FQ0r5RcPQF8W8IfHMfBy5Ds6p6DG1/IvPGrVSYnGh54N1GuqHNDwVhlpBBmRBiMe4OIUpKC/lSQF
+ytzO2wJFg19CVCqoyXSI4xHdp02JnQRL+Hl1NJPrbTWCRIf2F5qGpds8TipK70jV7Il8vhd4lSI
G5SSERrs/EvS4gmuysU1EBRIMgQuuOrC5YEpaOTG4C+8t2knTFV0xM0l/shRYY9mV1kcO/t6jgNN
VAbg3s3RsqQ1nF5r239gCPJaelgqHcwU3A5OkzJ6H6EBnNyxWQf7oy7c4ZfxE5uBtBuWRs9Ti7rT
YB1sNXNhvnsgNm4kvy1FAD/cJa+Lq1twmJugo7YIpL/VVx0D/g+gbdbB3Y9XAan1SGwtYsyMto8V
3OsuUI5NNwsIsH8Dgaaf65UV//3Neuu0vh4iNcRRe8n+Uqzd33nhWbIzMTELsrBLommtzynCNZ1q
rmlYUfZfUSr/zTM3EJNIzv/LHlyna86ws8H5SP0wM65gHh+CATcasG050H2FMO07z+DyRd9HobH/
ObbU1RDDes3FizWg+Y0xwtG7sazqEHDYiHLKwmun4z1SwZPD1Na7q4yAQacn0gNt4kI/pW4pUcOL
mMYxz6DURtJ7B+rxJDRGnPsGBAX0zG9z8sEoxAdUjzxkJgHcehDa/DbAjAy1HYc2hof0uWAEr0nq
/jUwSxrpoh6vDi94nKR0KzLxvaD091HKe2MpJFGGyso5nSmV9NyGs4Xho6sqlTx7VmmUu2Xbecna
AeVpb6aZpefR8gDbzSF+S8+iSmwoSK2CFjqJZcsi4eU1HqFA6Ucjil63sp32BbOHiUryZWWfx61h
pkcyTiaEPESpJ5WffX6dfoZchUGYtTQIpdC/zQwttgrHAaA1XFHe4HB4ChhBZZpIw11Q5SVp08u5
F7YxCwda7uMErL/89J1JJwMvU0cMo7sdpMu4fDmG1s/13eUrr6CBK9idQ79/wCgiEzhzTZfew922
M6KpyVK8JZgEOGbzfcv3YVjFEahxs3jYI6oF/pTZZ02eOBT48sHJ75rfPeLriZgHmyqul2Wpk79K
q+K5W0HHGyTlJ4X1zrLMwVJnRf18nqepfF9IUdPqUNOO9HoZUB8pbo6vbNRxHqL1yoznIwhS+oxv
F5mdHo0Q0tMjsxPFHCh8wDYKDVgFszseimLADStmlkbL3UJiN6+HE1LB75qHJ02ELHxNQwWFNFnU
W5VFuqL7guLOVoEEuDZ5V8f/XrRzyynJY6AWY2/x4aAzbyYCJxPgJjklqgCFDu5W15Rez6aCdgZD
U085/RCoM0TwFzxGlTcc6dgbRbytrxn98b8ihguKZgUQqNtQIJ4T77hs2Ew3nj+rCVMyeaycPCsL
60d3tvNq2NqLJARwKJezy0zObJSGfcpL9gicfo8NvhOPPNCY8OA55eo1ZuDLpYBwtQcuwDN9JXHp
o0ZyVYHgjOFyjlN7PZ6knDzN0cPeMSqgkLpIlz7OBBPRcUZn1sRTiVKaC3d9CKYS2hJMCka3T+/D
65ctJ8AtQmdYjaQasgJM1aIdDdN/dnsWfPt0/fvCwNbzJQXoeM2Xfonfv+cQmCNjaraLQTZd6wo2
r0fH5y1o1jSCxsrpxrF0DbCAv+qu8rPYC7WK+jv3mCNpUoNlTmTwnmF0AkGYUkqXwczIK/Jhs4W7
lDHKgPdgOKrC5gc6oDwkJyC+2vi8A5ontvvN3N+Tp6TTfmk8XlgYC1uf6dOCJx1PPO3lwM5X/A5k
B3KYBewes1WYVPM93USzne4u/3g2Gsw5x74iIBvdUBobkRCAmDF1i+85PQqLWURAnImjGi2X+nAV
fsHUCVdF1w2rAECUmIuZq4RG0zVPA1hISeijQfEFWhYrcre1gmlm7y1tX/ReiZ8cbFRPAGwvuc8F
nlkaXBWD2JkD95tJ0i1ucULH0GXLsakBTAX2malNxVFmIX40AdXzr287hB5XJ4QlhKKbDDAuuLdB
8pY3WiWPWaEjYaFNDLXBwl9Zq40elA1lMpV2c5YT3PPY1GWAByQgmWkrCMQ0zc2fmXm+HnLeyfEM
cOmNAge+Gi1Oum6FPccJYrAKJ95IphVpX/+8zv+FYZEDnQjn5pl++8qZ6v0648nZ2qlU9qq25IqW
KVB4AZ3MpuRVGbQ77os6YjirattXY2/qB+Nr66borTRqiTyr0Xu/CVeXs9rcQTXVBnO1HvxUwN1F
JuSHxoNvQYJFRVvwDisp1+AyDAMXXmY/uvyAzp1sx2pQZCZGo+ldbPcFDgHJA36/7KL4+LMliJTq
wU7BnRseuPMcoTjuPOmwvEEgVkE9tZ0MFfBmixT+xKuvTpHg85AP3vRkfPXq2rPKGpwkpxDHVg21
LEI1HJ1vhlTJ8gUwJUvaA3llzNh89BOvUxHZhbrrJtu87E0F525wMLBde726NKSGluxz9ng0cFt3
704KoC3z1Wl2dprjMsNhuU9Aa2IcUiPvVUnuhxBnRI0Zvdw0UXggF+x/7Go6WyKfixVKL6XIjZmY
dgFYWK0hj7IbcVc1Pb3KEr0ZP+CjT9VVdlwMXm1DqTx8J/YSlWJIfqzonwPR+iY9SVag6zWC6Jcd
VuOFOLdYvN0ug7kjTG0sOGigxdGTysvFmzftthtUGfUe3azXys43M2cK+oR9g/OSohaPfXiIKmON
DoXAk09hZyn3KWXy3bBwF1oed2GQ+7pllPcSoQ+3dmFUiU7WlvnUeR0KvOqbIcyNCbNg9JjTiNye
ylumYrS9z3seWPdODaTpfNpmc/CfAD7mS3V46ooo2I5shPYf9HOrq7s4iza8vqKzU2+pR0il9JDd
TH6S8Jyt7ZBZiEkewDWZHzR5ySBZUTo9ZY8IPxkl4wiuN1rbUtJgauE8ril/KeEAnF5DHRRjFtXI
XoDyeXHQtSPsiXwZDseYdO89/HMCEtOBCrTiebZE0QRIUKEdVIGhmeee08YuyOwGeDlsUc182Bli
xluum1eWfY69nLDrEKl00CDHtrUKsqvm0yuXfPUKyZKWh8+HhjsFSZEFXB37Bd1e8xx0G3gtL6AB
NKkz/pvWEdCe0gpOmsHVR/rnYR1DUlp7yqtm5VWGx419jd6IY/fByDlE3JrKMKHrEyc/T6IkuD5l
qJ/+WhKt3uw8YS1gtYak4MljLAKocf5PFv/nIVoG9JPh+Y4JeUK7z0ibeEW3hSPqHI15kxwox0sN
JYl196orKG635aWHDgrTE00vrkpQhK4n4v3cC+Sb4Ygt7F/IUij5GXFuIxbc6Fu9ghc02m0Ck8wY
sCwrNdoboOWtn413ikrGKr8MGleDXd7hfuYSMlxdTFJ1MlLZgORJIOyaAMICqVEE8yJlStI5obxr
B9SuRJhBN9e0W9HpN8vrTTTeiECvH7nriWyn9Z/hV4899RHFGtEb72TkdUtV9LQoGQ0pCHb6UeiD
Y45UvAdLtam/B83wI/6ato5mClvXvD+bJPn1QiPO45XrqrK+maKhtA3VB7rovrH5bOsDDVx8Bh58
w/J/seyKLsw2O8H8c+eIvEsN3nyx8SjLobQhDL0xkPTLKBHQhxjNTLraebWWpv1HYpKwhdbOF0il
3fs8uXQdPMOi25XHRRFZR/MzAVSL605s4uwVXaBwNbGdS2MVVAGaC6a/yUd6FTREtHXR+fIYnCt8
Iihp5La/wUZIqWGeFyZgrU4SqolxlDVww4l10/RCWIyhQOO/fm1Ul9j5J3D7YwWQ22aB/TKxFUG1
vJSkA49SKDjJFfR/SjyBIOZga/Q0sxKFRL0S46w0/TnJlo8yK+PpefpG1LvGPqrsA+ytzvPHUVn9
2rAAjxCJ8kWmnAEoL4xQJWbyPmnEqkbUHn7EM/X5judGW6HGsaAsl59G8hyT28yL6YEKaGFC6Ds2
jjjbm+ESN8s/TIT4X19F6T4ATSFyv3foOLvvFGM01qU4fJS88E+aiP3Nx6W5bM4ZTUJ4N8FnxaZf
RUCSGuZj3BRHDKOrocT0NYxykrf+mqpslR+JRX72ogkKtSVuO8No7aIDNGe3DRQ/XjVtcOzYklq3
urR7m6JpKPuI+d5Mbw2p7CUW6eJ2047HcesRuZ1Tt9gaTHsMIX+aWL17CW7iMG9uWMYGJ7/dLSP8
k+f9exjbqq2leAOjFUxNOdNBDdMmMpy90bh2Mfyx9I6I72fVg1I5Vc6+VauufbeBtjAtcTtHb3v3
xCsjjCk9LwLULOrHUsweHzjh4mJZ2B8grGf5GV9Vio9IQzYB0eoaVynfSTIPCOI2egM8iVTpEhbA
94YLQvrL4rxXBeGz5pUVC387pRi13RWv0vFAF+mm60sYuPkSv2NsDpc+cBdY3jDQr24uSjxMXsEO
ihI0/SXo7xC39FwI+RxUbYsy4n7rGPpkItV31efU7U01wyg4cxzk1nWiY5W44SqoFUYTYQS+cS1n
ML8b6urP246qlmos8Rdt0XA8SfHsV2IoEPXWxOBfWTenDQauL7hsb3xVUXAB76MHMPjnqmvV3BEo
riVfS54t8NVFN+wPRpKeOg3Orqp5Xs8K8f26lgZ/ZtsREm2vllTJgtbfmGUy+K2OGmi43rOte+1g
duvAXJNnqnB/V1ITxmnQapFdi9tZKr3FS6HGQwZ6Kdz0PaC/sGoGiO2O7HFPJ6a1g4n759mfGHCZ
Ct8OCOa1WicJoxKByw4jbIhIX9+4czsaDYR4bk992QaY3pBGmY4y0VqtnIBmUmezEVA+jJzjqYd7
sNG4P6l+/DwN7oQ6PvmHehxO/lLAkNnEytzHjpg8CjpptI3RTsQua1S5S0TcjUxmZwaxqgT5Ihzp
j2gcTjeAgkln2tejC8emOnNFlawA0ih0gzCk4bcfA82vQ9USC/naxqHE9mJkBeLSO5hGMCp2mZ3e
pL8kJdMjATP0zKhp8ljdmJzQfpJ4ZuMYfDws9XCTNqve9URM+atvH8zy/M+YLAovhEdpDJrsKFbq
ogluTbPxjw3K0x5yP3L3isPrGR+tDZ4LDypJAGzvUoeZ3VPL5OsYbr2cW6lr4SMERNx+8b2rPFRv
5pUpjD5Tns2dhV2N0POvoj3q+2+JoJYOsy8kfJ8HEVvH6Kcpk4+ivtlEMpAycWSR5I5mUcgqRKhK
ImIb4lZSnPTwQaAsYHUjXMRchrgHSfFflrK/YpzMJMFYmh2Cw8sbT3N+40Cae1Ty1FEmOn5QR9G+
jwBQH2hZrTJDs5xdVB6jY18M9MFusJJhhVZk7044WakJRHvktlCFjs872VT0bzgWJygHz8brh1Lo
EqC7+mgIso2ekyyhh7OR94aC1U4G+54+hxdpj40mR94Nu9t+zJCS6swq9Hmdknuh3JmM0M9rgCQX
sLoFmo+1Okv+DR6HDn7TIbY/w3+83pZHYvZClsIVaiKhIwW2Ub2ZMh6JyKgXkymL8XAl7I6xsIRY
hLwFm5v5hlB/Rxqo5+hOiOdcp9mdXB2pa1Ghx75sVTAbujS9L8mM0Yll0GuajvY1YNbSGKL6BEGT
P3Si+mhWvmZ/WNpx/t400swYOdCqMGPFqVh9lykzlPAzCDBd8UESKwaCzOGQ56v5chp9u9mAceQp
fKXvFCnwKWx8gGvBCI/HQwLTOwFt8Yp9e8i51us3NnGFcn0dme9reGdlI/QfCMCP+r7McoLnbHrM
R4aRpeldEtc+K5ZrxIpdzjyGUTzEWojwSXfRRr1mYwI6Vqipkxlhfpe5rvE9AgbUBEiroAU/iCT5
Ni0PhjOS3qiZEr9t0NQVE19UfRDHifiu6WrGa9+f2gJrcy8RgNXiTUEAwPVv9XNVxbAEpkAsyjsb
mWA6SrvJ4641+xupdyVR3A3ME2Z4/X0sZIer2sGr4wxhXPJSB8OE64+uY/xjxuh60DRpykCJLF2i
2GoyQSHwholPgdxhPhuybpHdlctsNE6d93DvtKKV3GNHVIstbYjZ2UigZ4twaJqeH0BWEWwocHyJ
S+l1sK56hvEbfLmBPc+dk+1rSaz4Ej0y1hT3Y6Ipy3mAD1bqYyAcxqKbd1CtmmExNTlkifWUDYYZ
ZGU6MwLQA/66zTwa/Ia8krrLP3FLQy4nRGVVdBPnbdXTpKwPQZZHFMI1Quq22FQqknsUZsLwngew
v9UJLuScpuzaOZfubKH0rGl1kheq/o7GB58P2CBX6ocZM59c3blNIktKNBErg7X4yYamCs5iV6Uh
wE65MLAro+f9alFFU3LYWxBUnLfeVMwr6hYT67mGBTyYbF1kZviG+grWusHzepEraqDyMUGBkrNr
PC9RxowL0matei+OyZZg1fwL2ZCgVNK4iZAUoLflN9Xeh5uTkrx+IuLjulAPB3ca9nlputvnCgU/
b0RDVZkK1giPf0xCm8DuaMfYJs0ygdP52vb62k+Pth11hEZAZmPLcncCDKEMdE6HSMi+dhk86HG8
c7VRS4rjkha4lJOjvi3nCJ4SVqxNm/3wuWLSSrOFOyJUxbdcMMH/RwzVfMXRCqlpTWh8Az5SMVcV
MwGyVIPTyyLgSaClWoVi+ol0iNPZA02xwdVQWgy4iD4mv1fGYq+Hh6JpXIAxxJODx0eeHpEdIB1k
uPknP5eVavZxaHtzS0FGywJMXRL0WwIDwi754dgU6srL9mA6x0y+0XPelBVwnmsCukYb0LMqckqR
LxKp2rse3JZ3icmPwlp32u09Eb4z34aOY8ekqmQlHFR16KSWifa0IpsBavv1KBZrq9AvfW3Q8oS+
MLjGf9u4dQ1nnzqnMw/855hTFeSiiPDu22oPR5LyXA1cZ2cvgrHwSt69xpxecjy2IcREkn6JFoVv
jRTxEqictI+bxKjVnIuC/N+W3gu5GygwR91/cRcuU7MfqVaCtNIMuecITQOlfK+bQfXgQTH5ssW+
u+vHTHpk/xkxXKAtjIsP1zdGpFYAmhcEgYyvRE4FZL9zD88b/qdaqFIlffygKHfDQas1jYVV3j3d
db5LCnIl6JQBGK6nORMWrY+eklO3/IA4Licv6VThAAUXAQ8i0/oy/pnAjad3JerNzCdt4HwnAmRv
gEdiYXOF/1ZMpUkno3CRRjj81IAfWPtE3GGIWbIo5B1bdOZ8k5DpZ7MEsS7XQw72lRVVcebEF0xG
yGHRKvTcfj9wzp267DIUzXbAuo8gYoEnZ1w0NYjQuKPh4A+0r2RcA5AsifukPxGCiCDdaUMWzQxd
Je2dIT9TmwYr3JjAMQPxEzhpSmuWIJCtREBW1BfBo3M/qsQlFYfp6jtDcv2zsjj9GRkinMb5Nbt/
7c0/DiVanqj4Fs4lv5amVX+0fsv1/aoFdAhehij6WPIqQBF/TwRq7yYvbZ4Bl87vkwlH1N2CLVut
WS5T8oQ2d00WF/fwYHphP6rcmYucq4dtAGH3JgSz1V9CO2tj/iuKGcJdRHKw0bgQSwZK1QgRecYe
FuLYxydXXYGFlnPhjCL7mhy6SKZvuUljec5MmXwIStgoHFRek3XxMG2X1mI3vVtGKn9bfNYCx9ZL
g8Ug2gBNE4VSXFUySiWh4Ti9Lo5HR33WXROx1p0yaRc2HhIFpyxRs3+/BCn94OSxpa3uvW9bPe9/
1p1wnU5KptiaOAlJT7/678PNRIuztCrI2njIlqYRN1/AF9s0KKgGyecpc1iN+54vIUS34riXCfWW
2RR6Et3U4EJaNSIxqddtZIvnJFrcgpy42+pR1jn50kBPuyhi3ErHe4ysukS3K8xiAzhUeiL2Attk
2j+b2lnsO/GcTmlVrrzSd17ge0+8JgNjMMRtj6BqB/8p7vYAhSngwaG3PS8ZmWCdCk5VEqdYY4Pt
KHZRzZnQP+xDoqbU3EKVf0dq4LpbkhV02Niqv+MnXA6t683hhq72dfrvsvcoAZmwEpZNeM3/pDTK
M1nbTHU9qiqUNx1KGqqR5nEdSFZgtk7qnkxxrm+9t4lrTQmrdnzNchRY2I4qd02p60aN3gQA0Dgd
l+U5cCMAwwOEvFV2PbfQvdfxwVsSsdRhSfCfpNSc0Dv6ZvzZ0WKh06bEKnearpMHg5qZ2PdUI5b5
dIXT1ZyC/lwlZQsIwBfnxPGT59CE/yXWRpjBiVEO9s5eOL7SRy84q6Q6m/eT9ZRkFUSHVCgwyrIR
oVLExr0u8K75MkfGvRMRPGPlwomr8DoHhZ+uteJ5E1kJXo2Zyx1CI8BUOzPKjpAhVOQ5auBg2EGQ
ANzuCYgVHmltKWYPEae86JAVzqK34OyYFA+91B5eDoS0UmQJBMpLI88qJ6lOerW2d03MyKiUSk6C
2C8YG/HyWSye/LI8XZeLoyAag/nXlXHe8eW0b87rrkWuCmVv0EFLUtpntbm4pewrvFaiHbYFb2y0
PoUtpbRD/TrGM28y6J+6pNOa71nCeONAgRx7RujEeElW4aU1KbMsUw+D61vytRJSXMIHTPV37gpW
Iz5rSDgSKtvvwlgm1HjOgR8h7WuievnKcT0iSPWDSkaOJhM4pA2oq6CckVLSiA9rA1fIaWSvLfJ5
NCnZEh9D7C9I+Tb2e9BEQcbwxkkkZ/Zj31YsFdiot80yFKzGFmu6SXf73ZhNIG1PdjBFJ/zzMT4p
ozrdbn6LSIDBFCBw65jTIsPPFt/s6gCyqOyZKdIW6GeNC0quPL2Z7LnV/ygntbf2Pr7P0nTsa9xO
TkcBLciDTWdEWD7bMt80qM4HUj+FcQ01guI/1cGd29BTffp9M2kvMynr1taqa+/WeWbKbeK2U2QP
gq8qc/ycZPGNEbvAmcdMqCpdz6pdFC7aVofKg2KPyRk7/aQdkiIimPxMMj5/FuKzkPtncIAA4Nju
NGZGNPqIEO6JteVuhSNuRil5Fc3sbzL/ZCXtLVwcccYUNroLGPljtD1Q45fUr2Lnhw1/Zjn8gFnb
/RrzE/dWtYQq1ma/+bzHry/AU8/T3+zWHl82BoUE44wY2lszLDgfYKzuytGDWY2iu/gAwZemeqZl
u+MiKA9yn0JbUTJuHF5SZifNxQHO6Vawl/5OA0Kov3ZJHDBkwpSTfdk4Y1xV/rliWfR9D8fDYTEw
0k7XonYUKtZ+i9/z2P05RJlb4dsgB6KwkFLxYyPqS7DFXpimOSDtGA4c6ShzxepeUfCY1S3vCpqT
sChddqVRzn4ot5vnguily0sBKT71wGGnfAbTlB3LwKlKRsk9gnJ1sJrdpmCXoMucqdD6BAwMdAX1
RylNniZ6HfDjW6LXZRt5OROU6ab53i//NgEAGLp2u8I0pF9YrMcZTTh+/kLWwL2D0cODhT6X818w
HLeAagkuiKZ2hoN0NCYRzYxW9YgGY7aavr+GgqsuBphcBUZrTectxeFszh4m0eTK2Ceg03UFgHLl
7pCR9BJ4+Kt9h4RE2ARcgQh14Ja2bQJ4KK0AztNRRTa/2sGT8KivArQVVVSYpQmU7rumytoPnnUQ
VXlAGhUTno8A5pwTzl4a+JC4m+QKjCgO4v6tTscs5B2S7skSRSve3SsrOpVwllDZGvoL0vIjOB0M
R8a8bYSyqL8RUcXwmfaQxHKy8IJRJ1KPqxYHSR46v0cFKmO/Ajiei4WPuKKtNmh2mqIzWlZBjjiw
OhWuoIOXHz13kl6rxsPFNB3UlcX1GBV3tsNLvHxoJcO7Rlv1Q7EndqElvO5NeOVUWN1/2GdxdwO/
ektgqhDRo1EB5ncWjkK9ZYtMNVmJ+pxYPpaXGVcHi1elyLs++xd2Q5UEGcZGBT73Wmptyg7vWTld
YVToyZVhDMke/RQ7D06ckQsOttZnTq2GoSPxnPnhJj4nj+1j3LI68it9TUQoBIMFe3KeWpv14+Tg
9C4aqaE6w0skM6z9XRKumCS5lyV/81EJQQY2QO0RXBrdtL5x8HCVzhx+6pc/AltrAzutTkZ/f1kd
s+1M5XgWtccVWniDM7qUl45DQZ6BubfZu/ltsRAU7IcZVfQsKYnYAHANV2nJm2BBlQIUwj85xwT6
xJLtUWvL+7CRfKptzX8QvFaDrnkrRj+wfbdJ5+45gUEUxUBT8hkq7O5A5ttf42fLICjHomC7hLEw
bGNvPwOwaN3zwBVoNGZ5cBkkWVxxOtf2T8OB3O7cpKobfnmFMwvMsmU4y8bZwNHjB2q991IyIHKO
MMKPrAhkCW3K+KNlcIJB1szzcuTCBUESHGfUjfiYp12Pa905WhEBTZWu5yhbenvHnBxXAyrY23+8
xvPoqQ9GuO/qN4F70MYO1OqIz/syzt4SlTG14ekc3ngyDenffyZGInrUgF1Lk6x7o5EQWZ4/foRZ
bAic4kaS1e6qZTDhK1gwSZx0M2/4UXmDS2MycEkZV2fid8suICR4Qf+bvoLPwGvJJRywNe8J6/Wd
aCL6LMbRDw1y6wmo7aUTFIuL7q2JHetm95XTQP/aMGXVu3+8Lm+DmkyGxMf4ce18jww4kLtiy8Ne
75I5d0zCtVcMlZioIeGu1pC2xXW7aGdM1itdNcLGBKI73Jki+QdZHAYVhX4Oy/1VmOR/F5L04ICa
KjQPovueTUvHSslhuxtkj3zP09UfDnj0SclWRxyYx56eYLsXs+TD/DA+4bFt2eacCfgZH8NtV5EU
lRWgsINUdKIwmCgsPTMw2YQk7wW9x4AjJuKOIkOeWWW4a1/qTjh3hLwJ24O6Jpbg/xGpz9GWVHb2
XTwa52X3moUi791a1OKtGcI8DcaY+9d639HdI3ESBirUc3EZgWjOoqzQWVVI9fnRzUFD+VqQWWqt
Fo0x34Omieyyn3g0Smf+DaaH9HQVN9l2cFbo73Hcf3e696mVY8uc58t+WZ2bo1Al3lHRnkpu8tIY
4BUTnA4ex6m2gsea0zk00iO6m3MF72/9rDCxCqDgdr4Ls6mHkCg8NxEvLC72WOEdU2IG0MjhyRTt
Osp8+IT3iycEnwAzAcOoHRbaqEFg2TP5zQtEDRMPXhrqeqbgUsvdIWbdR3YrPWnTxbiHe8X6mnAM
a62Ga/tLQe0116D7Tz4RZSBzHkUv8ggYV5uZhCrdy56s687m3aE1GJT7kvyDne/9HrB9nFwbMzvB
wBktgNMOcQYtaHh4ZqV0Ptu2E/ZyCggWXjUrp/RGb+bEzISA7wkoaUM7d9WCgKGjn/a85gklBj7r
h2y+xqa0cn55vKdPiiJnZbf7+40E81RRjk0ZlfLGkgvRBSkgqPprIIDYtOClM3GB2tRT55vjxaae
N2zyDFibVNx6kcYnMWzH202u7iMpBtZvcX8zPVkf75xojOzuds1FcZOEUMFgCUBf3jzA1kcBU/aX
FUqnsdTBcK8Oyxo2WgSzwlWoL5Sll2YuaNiK/Z0IXitIGb73r/n0qxLnGDaid5Sud3k5FJNZNonq
blWIPAH3AgFLit5eKL5CrpNkdUKgkGsRe6Cy3k0vltfZvkor/cU2pTLqlILTxE6yGiUs3dbJZIGY
WyGG+h/TwR57CcbCCPSIZAe6KHZYtNtvybSc7uEjWC3FB2C8FnJGMf3htT87cW/cDQx3+W3RgSPg
JMlKtrEb5gYrM7vQdy+b+XhiJj1S6YLiQnNfh6uE2FuenmttURHLl5MBFWK7EN9uGzhaTLaWhLP9
9hjsgAxT4NpngAtdFgKwKdNnLVyNYRaVcRwsMsli/v5STWSqtoCxTqxbfYQedEHfULZ7GuEYLohF
XT+Ai5pQqdKTv350K1mh7GV1o1koKb4e5xxuH2qd0azQUoAL6iWVtk9gJgbkfxKusps2+50FVCnX
x8x8rjaxWRZYinR9Dbxif3qGclFy6nRGUw==
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
