#!/bin/bash

ghdl -a mpx4zu1.vhdl
ghdl -a mpx4zu1_tb.vhdl

ghdl -e mpx4zu1
ghdl -e mpx4zu1_tb

ghdl -r mpx4zu1_tb
