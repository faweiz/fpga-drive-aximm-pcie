// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Dec  3 23:55:33 2023
// Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Tony/Downloads/PCIe/12022023/tony/vc709_fmc_rc/Vivado/vc709_hpc/vc709_hpc.gen/sources_1/bd/fpgadrv/ip/fpgadrv_axi_pcie_0_0/fpgadrv_axi_pcie_0_0_stub.v
// Design      : fpgadrv_axi_pcie_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fpgadrv_axi_pcie_0_0_core_top,Vivado 2022.1" *)
module fpgadrv_axi_pcie_0_0(sys_rst_n, cfg_ltssm_state, user_link_up, 
  intx_msi_request, msi_vector_num, s_axi_awid, s_axi_awaddr, s_axi_awregion, s_axi_awlen, 
  s_axi_awsize, s_axi_awburst, s_axi_awvalid, s_axi_wdata, s_axi_wuser, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_bready, s_axi_arid, s_axi_araddr, s_axi_arregion, 
  s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arvalid, s_axi_rready, m_axi_awready, 
  m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata, 
  m_axi_ruser, m_axi_rresp, m_axi_rlast, m_axi_rvalid, pci_exp_rxp, pci_exp_rxn, refclk, 
  s_axi_ctl_awaddr, s_axi_ctl_awvalid, s_axi_ctl_wdata, s_axi_ctl_wstrb, s_axi_ctl_wvalid, 
  s_axi_ctl_bready, s_axi_ctl_araddr, s_axi_ctl_arvalid, s_axi_ctl_rready, axi_aclk, 
  axi_aresetn, axi_ctl_aresetn, interrupt_out, intx_msi_grant, msi_enable, msi_vector_width, 
  s_axi_awready, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_arready, s_axi_rid, 
  s_axi_rdata, s_axi_ruser, s_axi_rresp, s_axi_rlast, s_axi_rvalid, m_axi_awid, m_axi_awaddr, 
  m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, m_axi_awvalid, m_axi_awlock, 
  m_axi_awcache, m_axi_wdata, m_axi_wuser, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, 
  m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, 
  m_axi_arprot, m_axi_arvalid, m_axi_arlock, m_axi_arcache, m_axi_rready, pci_exp_txp, 
  pci_exp_txn, s_axi_ctl_awready, s_axi_ctl_wready, s_axi_ctl_bresp, s_axi_ctl_bvalid, 
  s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rresp, s_axi_ctl_rvalid, 
  int_pclk_out_slave, int_pipe_rxusrclk_out, int_rxoutclk_out, int_dclk_out, 
  int_userclk1_out, int_userclk2_out, int_oobclk_out, int_qplllock_out, int_qplloutclk_out, 
  int_qplloutrefclk_out, int_pclk_sel_slave)
/* synthesis syn_black_box black_box_pad_pin="sys_rst_n,cfg_ltssm_state[5:0],user_link_up,intx_msi_request,msi_vector_num[4:0],s_axi_awid[3:0],s_axi_awaddr[31:0],s_axi_awregion[3:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_wdata[255:0],s_axi_wuser[31:0],s_axi_wstrb[31:0],s_axi_wlast,s_axi_wvalid,s_axi_bready,s_axi_arid[3:0],s_axi_araddr[31:0],s_axi_arregion[3:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_rready,m_axi_awready,m_axi_wready,m_axi_bid[2:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_arready,m_axi_rid[2:0],m_axi_rdata[255:0],m_axi_ruser[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,pci_exp_rxp[3:0],pci_exp_rxn[3:0],refclk,s_axi_ctl_awaddr[27:0],s_axi_ctl_awvalid,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_bready,s_axi_ctl_araddr[27:0],s_axi_ctl_arvalid,s_axi_ctl_rready,axi_aclk,axi_aresetn,axi_ctl_aresetn,interrupt_out,intx_msi_grant,msi_enable,msi_vector_width[2:0],s_axi_awready,s_axi_wready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_arready,s_axi_rid[3:0],s_axi_rdata[255:0],s_axi_ruser[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,m_axi_awid[2:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[255:0],m_axi_wuser[31:0],m_axi_wstrb[31:0],m_axi_wlast,m_axi_wvalid,m_axi_bready,m_axi_arid[2:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arlock,m_axi_arcache[3:0],m_axi_rready,pci_exp_txp[3:0],pci_exp_txn[3:0],s_axi_ctl_awready,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid,int_pclk_out_slave,int_pipe_rxusrclk_out,int_rxoutclk_out[3:0],int_dclk_out,int_userclk1_out,int_userclk2_out,int_oobclk_out,int_qplllock_out[1:0],int_qplloutclk_out[1:0],int_qplloutrefclk_out[1:0],int_pclk_sel_slave[3:0]" */;
  input sys_rst_n;
  output [5:0]cfg_ltssm_state;
  output user_link_up;
  input intx_msi_request;
  input [4:0]msi_vector_num;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awregion;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wuser;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arregion;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  input s_axi_rready;
  input m_axi_awready;
  input m_axi_wready;
  input [2:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input m_axi_arready;
  input [2:0]m_axi_rid;
  input [255:0]m_axi_rdata;
  input [31:0]m_axi_ruser;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  input [3:0]pci_exp_rxp;
  input [3:0]pci_exp_rxn;
  input refclk;
  input [27:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  input s_axi_ctl_bready;
  input [27:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  input s_axi_ctl_rready;
  output axi_aclk;
  output axi_aresetn;
  output axi_ctl_aresetn;
  output interrupt_out;
  output intx_msi_grant;
  output msi_enable;
  output [2:0]msi_vector_width;
  output s_axi_awready;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [31:0]s_axi_ruser;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  output [2:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wuser;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [2:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  output [3:0]pci_exp_txp;
  output [3:0]pci_exp_txn;
  output s_axi_ctl_awready;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
  output int_pclk_out_slave;
  output int_pipe_rxusrclk_out;
  output [3:0]int_rxoutclk_out;
  output int_dclk_out;
  output int_userclk1_out;
  output int_userclk2_out;
  output int_oobclk_out;
  output [1:0]int_qplllock_out;
  output [1:0]int_qplloutclk_out;
  output [1:0]int_qplloutrefclk_out;
  input [3:0]int_pclk_sel_slave;
endmodule
