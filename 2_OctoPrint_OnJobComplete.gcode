ENC O1 S100 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
M400 ; Wait for current moves to finish
G91 ; Relative positioning
G1 E-2 Z10 F2400 ; Retract and raise Z
G90 ; Absolute positioning
G1 Z230 ; Raise Z to highest - safety
G1 X0 Y170 ; Present print
M104 S0 ; Turn-off hotend heat
M140 S0 ; Turn-off bed heat
ENC O1 S100 ; Red bed light off
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
G4 S300 ; Wait for hotend to cool down (alt M109 R40)
M106 S0 ; Turn-off fan
