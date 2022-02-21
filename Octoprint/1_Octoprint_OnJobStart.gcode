ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off

G1 Z10.0; Move up to prevent scratching anything

M140 S85 ; Set high bed temp for first layer (Async)
M104 S150 ; Pre-heat hotend, saves time, prevents leakage (Async)

G28 ; Home all axes (finishes at the center of the bed)
M190 S85 ; Wait for bed to reach specified temperature

;M420 S1 ; Load last Auto-bed-leveling result from EEPROM
G29; Auto bed leveling 
M500; Store bed mesh, in case it is needed later on

G92 E0 ; Reset Extruder
M104 S200 ; Set hotend temperature (PLA: 200°C)

G1 Z10.0 F3000 ; Move Z Axis up to prevent scratching clips
G1 X0.1 Y20 F5000.0 ; Move to start position
G1 Z0.3 ; Z part of moving to start position
M109 S200 ; Wait for hotend to reach specified temperature

G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line

G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up to prevent scratching bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over
G1 Z1 ; Move up a bit to prevent blob on nozzle