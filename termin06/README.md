## Termin 6: Latches und Flip-Flops
### Aufgabe 1: einfaches RS Latch

Die Entity [rs_latch.vhdl](aufgabe_1/rs_latch.vhdl) beschreibt einen bistabiles Element, außer der `R` und `S` Eingang werden auf `1` geschaltet, dann sind beide Ausgänge auf `0` -> "verbotener Zustand" 


### Aufgabe 2: D-Latch

Entity [d_latch.vhdl](aufgabe_2/d_latch.vhdl)

### Aufgabe 3: D Master-Slave Flip-Flop

Die Entity [d_ms_ff.vhdl](aufgabe_3/d_ms_ff.vhdl) verwendet zwei [d_latch.vhdl](aufgabe_3/d_latch.vhdl) components hinterneinander mit einem inverten clock Signal für den zweiten d_latch.

Das Master-Slave Flip-Flop benötigt eine Flanke im clock Signal, damit Werte gespeichert werden können. Hier wird bei einer steigenden Flanke das Eingangssignal im Master gespeichert, bei einer fallenden Flanke an den Slave übertragen. Flankensensitivität bedeutet also, dass das Master-Slave Flip-Flop nur bei einer steigenden Flanke den Eingang speichert.


### Knobelaufgabe: Flankeninverter
Man invertiere das clock Signal:

```
NOT(clk)
```
