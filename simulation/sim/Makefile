NUM_BITS=16
TOP=lp_tree_serializer
VCS_OPTS := -notice +warn=noTFIPC,noSDFCOM_UHICD,noSDFCOM_IANE,noSDFCOM_TANE,noSDFCOM_NTCDTL,noIWNF \
	   +lint=all,noTMR,noVCDE,noIWU,noOUDPE,noVNGS,noONGS,noZERO,noNS,noUI,noPCTIO-L \
	   +v2k +vcs+flush+log -sverilog +systemverilogext+.sv -debug_access+pp+f -R -debug_pp\
	   -timescale=1ns/1ps -lca +define+USE_POWER_PINS +define+FUNCTIONAL +define+UNIT_DELAY= 

all:
	vcs -full64 -j16 -f $(TOP).include $(VCS_OPTS) -l $(TOP).log

pre:
	vcs -full64 -j16 -f serializer.presyn.include $(VCS_OPTS) -l serializer.log

wave:
	sx -w $(TOP).vcd.vpd &

test_conv:
	vcs -full64 -j16 -f conv_tree_serializer.include +define+NUM_BITS=$(NUM_BITS) +v2k -R +lint -sverilog -debug_pp -timescale=1ns/10ps -l conv_tree_serializer.log

