onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /serialreceiver/DX
add wave -noupdate /serialreceiver/CLK
add wave -noupdate /serialreceiver/NOT_SS
add wave -noupdate /serialreceiver/Accept
add wave -noupdate /serialreceiver/Reset
add wave -noupdate /serialreceiver/DataOut
add wave -noupdate /serialreceiver/Dxval
add wave -noupdate /serialreceiver/busy
add wave -noupdate /serialreceiver/SDX
add wave -noupdate /serialreceiver/SCLK
add wave -noupdate /serialreceiver/sWr
add wave -noupdate /serialreceiver/sInit
add wave -noupdate /serialreceiver/sPFlag
add wave -noupdate /serialreceiver/sDFlag
add wave -noupdate /serialreceiver/sRXerror
add wave -noupdate /serialreceiver/serialC/CurrentState
add wave -noupdate /serialreceiver/sFCount
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {199887 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {199594 ps} {201350 ps}
