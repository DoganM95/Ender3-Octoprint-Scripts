ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off
M140 S30 ; Set bed temperature (async)
G28 ; Home all axes with BLTouch
M190 S30 ; Wait for bed temperature to stabilize
G29 ; Perform auto bed leveling with BLTouch
M500 ; Store bed mesh in EEPROM
M106 S255 ; Turn on fans (includes nozzle fan)
M104 S200 ; Heat hotend to target temperature (async)
M109 S200 ; Wait for hotend to reach target temperature
G92 E0 ; Reset extruder
G1 Z10.0 ; Raise Z axis to avoid clips
G1 X0.1 Y20 ; Move to start position
G1 Z0.3 ; Lower Z for priming
G92 E0 ; Reset extruder
G1 Z2.0 ; Raise Z axis to avoid scratches
G1 X5 Y20 Z0.3 ; Move to position for priming
G1 Z1.0 ; Slight lift to prevent nozzle blob
G1 Z0.12 ; Lower Z axis to first layer height
