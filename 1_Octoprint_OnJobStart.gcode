ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off

G1 Z10.0; Move up to prevent scratching anything

M140 S50; Set bed temp (Async)
M104 S200; Pre-heat hotend (Async)

G28; Home all axes
M190 S50; Wait for bed temperature

G29; Auto bed leveling 
M500; Store bed mesh in EEPROM

G92 E0; Reset Extruder
M104 S200; Set hotend temperature (PLA:S200, ABS:S230 )

G1 Z10.0; Move Z up to prevent scratching clips
G1 X0.1 Y20; Move to start position
G1 Z0.3; Z part of moving to start position
M109 S150 ; Wait for hotend temperature (1st stage)

M106; Turn on fans
M109 S200 ; Wait for hotend to reach specified temperature

G92 E0 ; Reset Extruder
G1 Z2.0 ; Move Z Axis up to prevent scratching bed
G1 X5 Y20 Z0.3 ; Move over
G1 Z1 ; Move up a bit to prevent blob on nozzle
