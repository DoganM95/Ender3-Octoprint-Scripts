ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off

M83 ; put E axis into relative mode independent of other axes
M82 ; put E axis into absolute mode independent of other axes

G90 ; Set all axes to absolute

G92 E{{ pause_position.e }} ; reset E 

G1 X{{ pause_position.x }} Y{{ pause_position.y }} Z{{ pause_position.z }} ; move back to pre-pause position 

G1 {{ pause_position.f }} ; reset to pre-pause feed rate  