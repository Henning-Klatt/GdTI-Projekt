#!/bin/bash

ghdl -a lsr.vhdl
ghdl -a half_add.vhdl
ghdl -a full_add.vhdl
ghdl -a add4.vhdl
ghdl -a alu4and2.vhdl
ghdl -a alu4exor2.vhdl
ghdl -a alu4_lsr.vhdl
ghdl -a alu4_lsr_tb.vhdl

ghdl -e lsr
ghdl -e half_add
ghdl -e full_add
ghdl -e add4
ghdl -e alu4and2
ghdl -e alu4exor2
ghdl -e alu4_lsr
ghdl -e alu4_lsr_tb

ghdl -r alu4_lsr_tb
