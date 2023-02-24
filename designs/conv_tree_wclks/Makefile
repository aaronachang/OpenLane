NUM_BITS=4

all:
	vcs -full64 -j16 -f serializer.include +v2k -R +lint -sverilog -debug_pp -timescale=1ns/10ps -l serializer.log

wave:
	sx -w vcdplus.vpd &

tree_wave:
	sx -w conv_tree_tb.vcd.vpd &

test_2b:
	vcs -full64 -j16 -f conv_serializer.include +v2k -R +lint -sverilog -debug_pp -timescale=1ns/10ps -l conv_serializer.log

test_tree:
	vcs -full64 -j16 -f conv_tree_serializer.include +define+NUM_BITS=$(NUM_BITS) +v2k -R +lint -sverilog -debug_pp -timescale=1ns/10ps -l conv_tree_serializer.log

test_clkdiv:
	vcs -full64 -j16 -f clk_divider_tb.include +v2k -R +lint -sverilog -debug_pp -timescale=1ns/10ps -l clk_divider.log
