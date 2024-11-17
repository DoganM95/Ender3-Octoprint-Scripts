ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off
G1 Z10.0 ; Raise Z axis
M140 S50 ; Set bed temp (async)
M104 S150 ; Start preheating hotend to 150°C (async)
G28 ; Home all axes
M109 S150 ; Wait for hotend to reach 150°C
M106 ; Turn on fans at 150°C
M190 S50 ; Wait for bed temperature
G29 ; Perform auto bed leveling
M500 ; Store bed mesh in EEPROM
M104 S200 ; Continue heating hotend to target temperature (async)
G92 E0 ; Reset extruder
G1 Z10.0 ; Raise Z axis to avoid clips
G1 X0.1 Y20 ; Move to start position
G1 Z0.3 ; Lower Z for priming
M109 S200 ; Wait for final hotend target temperature
G92 E0 ; Reset extruder
G1 Z2.0 ; Lift Z axis to prevent scratches
G1 X5 Y20 Z0.3 ; Move to position for priming
G1 Z1.0 ; Slight lift to prevent nozzle blob
