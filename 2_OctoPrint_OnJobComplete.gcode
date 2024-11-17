ENC O1 S100 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
M400 ; Wait for current moves to finish
G91 ; Relative positioning
G1 E-2 F2700 ; Retract a bit
G1 E-2 Z0.2 F2400 ; Retract and raise Z
G1 X5 Y5 F3000 ; Wipe out
G1 Z10 ; Raise Z more
G90 ; Absolute positioning
G1 X0 Y170 ; Present print
M104 S0 ; Turn-off hotend heat
M140 S0 ; Turn-off bed heat
M109 R40; Wait for hotend to cool down
M106 S0 ; Turn-off fan
M190 R50; Wait for bed to cool down
ENC O1 S100 ; Red bed light off
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
; M84 X Y E ; Disable all steppers but Z
