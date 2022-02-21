;---------- WITH AUTO BED LEVELING
ENC O1 S100 ; Red bed light off
ENC O2 S100 ; Green bed light off
ENC O3 S0 ; Blue bed light on

M140 S85 ; Set high bed temp for first layer (Async)
G1 Z10.0; Move up to prevent scratching anything
G28 ; Home all axes (finishes at the center of the bed)
M190 S85 ; Wait for bed to reach specified temperature (Await)

G29 ; Auto bed-leveling (BL/3D-Touch)
M500 ; Save bed leveling results (mesh) to EEPROM 

G28 ; Home all axes (finishes at the center of the bed)
M140 S0 ; Cool down bed (Async)

ENC O1 S100 ; Red bed light off
ENC O2 S100 ; Green bed light off
ENC O3 S0 ; Blue bed light on


;---------- WITHOUT AUTO BED LEVELING
ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S0 ; Blue bed light on

G1 Z10.0; Move up to prevent scratching anything
G28 ; Home all axes (finishes at the center of the bed)

ENC O1 S100 ; Red bed light off
ENC O2 S100 ; Green bed light off
ENC O3 S0 ; Blue bed light on