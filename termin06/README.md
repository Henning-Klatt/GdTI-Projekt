## Termin 6: Latches und Flip-Flops
### Aufgabe 1: einfaches RS Latch

Die Entity [rs_latch.vhdl](aufgabe_1/rs_latch.vhdl) beschreibt einen bistabiles Element, außer der `R` und `S` Eingang werden auf `1` geschaltet, dann sind beide Ausgänge auf `0` -> "verbotener Zustand" 


### Aufgabe 2: D-Latch

Entity [d_latch.vhdl](aufgabe_2/d_latch.vhdl)

### Aufgabe 3: D Master-Slave Flip-Flop

Entity [d_ms_ff.vhdl](aufgabe_3/d_ms_ff.vhdl) uses two [d_latch.vhdl](aufgabe_3/d_latch.vhdl) components one after another using a inverted clock signal for the second one.

### Knobelaufgabe: Flankeninverter
