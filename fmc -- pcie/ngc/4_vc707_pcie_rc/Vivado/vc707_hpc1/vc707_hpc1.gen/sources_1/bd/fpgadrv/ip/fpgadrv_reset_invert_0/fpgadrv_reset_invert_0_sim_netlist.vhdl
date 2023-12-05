-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Nov 29 11:24:34 2023
-- Host        : ITE00611774 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/M38172/Downloads/PCIe/fpga-drive-aximm-pcie/Vivado/vc707_hpc1/vc707_hpc1.gen/sources_1/bd/fpgadrv/ip/fpgadrv_reset_invert_0/fpgadrv_reset_invert_0_sim_netlist.vhdl
-- Design      : fpgadrv_reset_invert_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fpgadrv_reset_invert_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fpgadrv_reset_invert_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fpgadrv_reset_invert_0 : entity is "fpgadrv_reset_invert_0,util_vector_logic_v2_0_2_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fpgadrv_reset_invert_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fpgadrv_reset_invert_0 : entity is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.1";
end fpgadrv_reset_invert_0;

architecture STRUCTURE of fpgadrv_reset_invert_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
