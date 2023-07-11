#!/bin/bash

ghdl -a mpx4zu1.vhdl 
ghdl -a mpx16zu4.vhdl 
ghdl -a mpx16zu4_tb.vhdl

ghdl -e mpx4zu1
ghdl -e mpx16zu4
ghdl -e mpx16zu4_tb

ghdl -r mpx16zu4_tb
