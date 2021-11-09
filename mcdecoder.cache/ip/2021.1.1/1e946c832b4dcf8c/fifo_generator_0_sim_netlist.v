// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Sat Nov  6 11:30:39 2021
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [17:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [17:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [17:0]din;
  wire [17:0]dout;
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
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 108240)
`pragma protect data_block
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
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
