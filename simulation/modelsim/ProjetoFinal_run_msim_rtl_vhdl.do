transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/FFD.vhd}
vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/KeyScan.vhd}
vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/decoder2x4.vhd}
vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/Counter2bits.vhd}
vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/PENC.vhd}
vcom -93 -work work {C:/Users/marga/OneDrive/Desktop/TicketMachine/TicketMachine_HW/REG2bits.vhd}

