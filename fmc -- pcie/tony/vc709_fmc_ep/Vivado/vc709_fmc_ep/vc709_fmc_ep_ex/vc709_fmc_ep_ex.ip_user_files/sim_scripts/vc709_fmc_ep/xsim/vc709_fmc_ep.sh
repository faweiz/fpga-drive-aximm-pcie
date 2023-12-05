#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : vc709_fmc_ep.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon Dec 04 14:03:40 -0500 2023
# SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
#
# Tool Version Limit: 2022.04 
#
# usage: vc709_fmc_ep.sh [-help]
# usage: vc709_fmc_ep.sh [-lib_map_path]
# usage: vc709_fmc_ep.sh [-noclean_files]
# usage: vc709_fmc_ep.sh [-reset_run]
#
#*********************************************************************************************************

# Set xvlog options
xvlog_opts="--incr --relax -L uvm"

# Set xvlog options
xvhdl_opts="--incr --relax"

# Script info
echo -e "vc709_fmc_ep.sh - Script generated by export_simulation (Vivado v2022.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  xvlog $xvlog_opts -prj vlog.prj 2>&1 | tee compile.log
  xvhdl $xvhdl_opts -prj vhdl.prj 2>&1 | tee compile.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  xelab --incr --debug typical --relax --mt auto -L xpm -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip --snapshot vc709_fmc_ep xil_defaultlib.vc709_fmc_ep xil_defaultlib.glbl -log elaborate.log
}

# RUN_STEP: <simulate>
simulate()
{
  xsim vc709_fmc_ep -key {Behavioral:sim_1:Functional:vc709_fmc_ep} -tclbatch cmd.tcl -log simulate.log
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./vc709_fmc_ep.sh -help\" for more information)\n"
        exit 1
      fi
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
  esac

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(xelab.pb xsim.jou xvhdl.log xvlog.log compile.log elaborate.log simulate.log xelab.log xsim.log run.log xvhdl.pb xvlog.pb vc709_fmc_ep.wdb xsim.dir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./vc709_fmc_ep.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: vc709_fmc_ep.sh [-help]\n\
Usage: vc709_fmc_ep.sh [-lib_map_path]\n\
Usage: vc709_fmc_ep.sh [-reset_run]\n\
Usage: vc709_fmc_ep.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
