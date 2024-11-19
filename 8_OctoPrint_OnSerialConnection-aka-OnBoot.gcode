ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light on
G1 Z20.0 ; Raise Z axis
G28 ; Home all axes (finishes at the center of the bed)
ENC O1 S100 ; Red bed light off
ENC O2 S100 ; Green bed light off
ENC O3 S0 ; Blue bed light on
