#!/bin/bash

ghdl -a key.vhdl
ghdl -a key_tb.vhdl

ghdl -e key
ghdl -e key_tb

ghdl -r key_tb
