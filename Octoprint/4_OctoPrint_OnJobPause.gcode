ENC O1 S0 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off

G91 ; Set all axes to relative
M83  ; put E axis into relative mode independent of other axes

G1 Z+10 E-50 F4500  ; retract filament, move Z up

M82 ; put E axis into absolute mode independent of other axes
G90 ; Set all axes to absolute

G1 X10 Y90 ; move to a safe rest position, adjust as necessary 

M808 L0 ; Infinite loop to blink orange
ENC O1 S0 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off
G4 P500 ; Wait 0.5 seconds
ENC O1 S100 ; Red bed light off
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off
G4 P500 ; Wait 0.5 seconds
M808 ; Repeat