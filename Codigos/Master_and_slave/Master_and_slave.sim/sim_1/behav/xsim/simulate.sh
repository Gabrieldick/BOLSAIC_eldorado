#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Oct 30 16:07:11 -03 2023
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim Top_func_tb_behav -key {Behavioral:sim_1:Functional:Top_func_tb} -tclbatch Top_func_tb.tcl -view /home/gmdick/Desktop/BOLSAIC_eldorado/Codigos/Master_and_slave/Top_func_tb_behav.wcfg -log simulate.log"
xsim Top_func_tb_behav -key {Behavioral:sim_1:Functional:Top_func_tb} -tclbatch Top_func_tb.tcl -view /home/gmdick/Desktop/BOLSAIC_eldorado/Codigos/Master_and_slave/Top_func_tb_behav.wcfg -log simulate.log
