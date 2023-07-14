#!/bin/bash

ghdl -a alu4and2.vhdl
ghdl -a alu4or2.vhdl
ghdl -a alu4exor2.vhdl
ghdl -a half_add.vhdl
ghdl -a full_add.vhdl
ghdl -a add4.vhdl


ghdl -a alu4.vhdl
ghdl -a alu4_tb.vhdl

ghdl -e alu4and2
ghdl -e alu4or2
ghdl -e alu4exor2
ghdl -e half_add
ghdl -e full_add
ghdl -e add4

ghdl -e alu4
ghdl -e alu4_tb

ghdl -r alu4_tb
