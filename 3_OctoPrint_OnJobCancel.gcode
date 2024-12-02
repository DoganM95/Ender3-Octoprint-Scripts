ENC O1 S0 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
M104 S0 ; Turn off hotend heat
M140 S0 ; Turn off bed heat
G91 ; Relative positioning
G1 Z20.0 ; Raise Z axis to avoid obstacles
G90 ; Absolute positioning
G1 Z240 ; Raise Z to highest
G1 X0 Y170 ; Present the trash
ENC O1 S100 ; Red bed light off
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
G4 S300 ; Wait for hotend to cool down (alt M109 R40)
M106 S0 ; Turn-off fan
