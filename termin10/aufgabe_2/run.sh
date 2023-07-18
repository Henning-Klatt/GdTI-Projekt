#!/bin/bash

ghdl -a key.vhdl
ghdl -a schloss.vhdl
ghdl -a schloss_tb.vhdl

ghdl -e key
ghdl -e schloss
ghdl -e schloss_tb

ghdl -r schloss_tb
