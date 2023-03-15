NUM_BITS=16
TOP=lp_tree_serializer
VCS_OPTS := -notice +warn=noTFIPC,noSDFCOM_UHICD,noSDFCOM_IANE,noSDFCOM_TANE,noSDFCOM_NTCDTL,noIWNF \
	   +lint=all,noTMR,noVCDE,noIWU,noOUDPE,noVNGS,noONGS,noZERO,noNS,noUI,noPCTIO-L \
	   +v2k +vcs+flush+log -sverilog +systemverilogext+.sv -debug_access+pp+f -R -debug_pp\
	   -timescale=1ns/1ps -lca +define+USE_POWER_PINS +define+FUNCTIONAL +define+UNIT_DELAY= 
all: vcs compare

vcs:
	vcs -full64 -j16 -f $(TOP).include $(VCS_OPTS) -l logs/$(TOP).log

wave:
	sx -w $(TOP).vcd.vpd &

compare:
	python check_output.py $(TOP)
