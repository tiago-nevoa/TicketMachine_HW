transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/ShiftRegister.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/SerialReceiver.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/SerialControl.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/ParityCheck.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/FFD.vhd}
vcom -93 -work work {C:/Users/tiago_nevoa/QuartusProjects/TicketMachine_HW/Counter.vhd}

