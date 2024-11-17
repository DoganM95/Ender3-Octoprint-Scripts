M140 S50 ; Set bed temp (async)
M104 S150 ; Start preheating hotend to 150°C (async)
M109 S150 ; Wait for hotend to reach 150°C
M106 ; Turn on fans at 150°C
M190 S50 ; Wait for bed temperature
M104 S200 ; Continue heating hotend to target temperature (async)
M109 S200 ; Wait for final hotend target temperature
ENC O1 S0 ; Red bed light on
ENC O2 S100 ; Green bed light off
ENC O3 S100 ; Blue bed light off
