ENC O1 S0 ; Red bed light on
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off

; disable motors
; M84

;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0

ENC O1 S100 ; Red bed light off
ENC O2 S0 ; Green bed light on
ENC O3 S100 ; Blue bed light off