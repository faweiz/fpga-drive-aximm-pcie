-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sun Dec  3 23:51:46 2023
-- Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Tony/Downloads/PCIe/12022023/tony/vc709_fmc_rc/Vivado/vc709_hpc/vc709_hpc.gen/sources_1/bd/fpgadrv/ip/fpgadrv_rst_pcie_axi_aclk_0_0/fpgadrv_rst_pcie_axi_aclk_0_0_stub.vhdl
-- Design      : fpgadrv_rst_pcie_axi_aclk_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fpgadrv_rst_pcie_axi_aclk_0_0 is
  Port ( 
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end fpgadrv_rst_pcie_axi_aclk_0_0;

architecture stub of fpgadrv_rst_pcie_axi_aclk_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "proc_sys_reset,Vivado 2022.1";
begin
end;
