ENC O1 S0 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
G1 Z10 ; Raise Z
G90 ; Absolute positioning
G1 X0 Y170 ; Present the trash
M104 S0 ; Turn-off hotend heat
M140 S0 ; Turn-off bed heat
M109 R40; Wait for hotend to cool down
M106 S0 ; Turn-off fan
M190 R50; Wait for bed to cool down
ENC O1 S100 ; Red bed light off
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
