; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool on Tue Oct 09 2018 13:27:56 GMT+0300
G91               ; relative positioning
G1 Z5 F1000 H2    ; lift Z relative to current position
G1 H1 X-355 F6000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F3000       ; go back a few mm
G1 H1 X-355 F360  ; move slowly to X axis endstop once more (second pass)
G1 Z-5 F1000 H2   ; lower Z again
G90               ; absolute positioning