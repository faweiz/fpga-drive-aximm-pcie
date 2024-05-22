vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_7vx.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_8k.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_16k.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_cpl.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_rep.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_rep_8k.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_bram_7vx_req.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_init_ctrl_7vx.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_pipe_lane.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_pipe_misc.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_pipe_pipeline.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_top.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_force_adapt.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_drp.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_eq.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_rate.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_reset.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_sync.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_user.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pipe_wrapper.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_qpll_drp.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_qpll_reset.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_qpll_wrapper.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_rxeq_scan.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_gt_wrapper.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_gt_top.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_gt_common.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_gtx_cpllpd_ovrd.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_tlp_tph_tbl_7vx.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/source/vc709_pcie_ep_pcie_3_0_7vx.v" \
"../../../../vc709_pcie_ep_ex.gen/sources_1/ip/vc709_pcie_ep/sim/vc709_pcie_ep.v" \

vlog -work xil_defaultlib \
"glbl.v"

