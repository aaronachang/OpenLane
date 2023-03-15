* Spice sweep inverter gate voltage over time
.INCLUDE "lp_tree_serializer.spice"

.PARAM vdd=1.2

*dut CLK RESET SERIAL_OUT VGND VPWR PAR_IN[15] PAR_IN[14] PAR_IN[13] PAR_IN[12] PAR_IN[11] PAR_IN[10] PAR_IN[9] PAR_IN[8] PAR_IN[7] PAR_IN[6] PAR_IN[5] PAR_IN[4] PAR_IN[3] PAR_IN[2] PAR_IN[1] PAR_IN[0] lp_tree_serializer 
 
* ==== Voltage Sources ====

* Create a voltage source named 'Vvdd' with one terminal on the vdd! net
* and the other terminal at ground (0). Voltage source is 1.2 V
Vvdd VPWR 0 vdd

* Connect vss! to global ground
Vvss VGND 0 0

* Create a voltage source named 'Vgate' to control the gate voltage
* Vgate vi 0 <value>

* ==== Transient Analysis ====
.TRANS 10p 150n
* Create Vgate as above, but its value is a PULSE wave.
*          PULSE(V1 V2 TD  Tr  Tf  PW Period)
*Vgate vi 0 PULSE(0 1.2 10p 20p 20p 250p 500p)
Vgate CLK 0 PULSE(0 1.2 .1n .2n .2n 2.5n 5n)
Vrst RESET 0 PWL 10n 0 150n 1.2



.PROBE V(CLK) V(SERIAL_OUT) 

.END
