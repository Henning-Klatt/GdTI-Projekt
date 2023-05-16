## Termin 3: Boolesche Funktionen in VHDL
### Aufgabe 1: Testen sie einfache boolesche Funktion
Testbench-Lauf von [f3.vhdl](aufgabe_1/f3.vhdl):
```
➜  aufgabe_1 git:(main) ✗ ghdl -a f3.vhdl 
➜  aufgabe_1 git:(main) ✗ ghdl -a f3_tb.vhdl
➜  aufgabe_1 git:(main) ✗ ghdl -e f3_tb
➜  aufgabe_1 git:(main) ✗ ghdl -r f3_tb
f3_tb.vhdl:47:5:@16fs:(assertion note): end of test
➜  aufgabe_1 git:(main) ✗ 
```

### Aufgabe 2: Entity für einen Würfeldekoder
Würfel:

|   |   |   |
|---|---|---|
| 4 |   | 2 |
| 5 | 0 | 6 |
| 1 |   | 3 |


Wahrheitstabelle:

| inputs(0) | inputs(1) | inputs(2) | outputs(0) | outputs(1) | outputs(2) | outputs(3) | outputs(4) | outputs(5) | outputs(6) |
|-----------|-----------|-----------|------------|------------|------------|------------|------------|------------|------------|
| 0         | 0         | 1         | 1          | 0          | 0          | 0          | 0          | 0          | 0          |
| 0         | 1         | 0         | 0          | 1          | 1          | 0          | 0          | 0          | 0          |
| 0         | 1         | 1         | 1          | 1          | 1          | 0          | 0          | 0          | 0          |
| 1         | 0         | 0         | 0          | 1          | 1          | 1          | 1          | 0          | 0          |
| 1         | 0         | 1         | 1          | 1          | 1          | 1          | 1          | 0          | 0          |
| 1         | 1         | 0         | 0          | 1          | 1          | 1          | 1          | 1          | 1          |
| x         | x         | x         | x          | x          | x          | x          | x          | x          | x          |

[wuerfel_dekoder.vhdl](aufgabe_2/wuerfel_dekoder.vhdl)

### Knobelaufgabe: Würfeldekoder mit Datenfluss

[wuerfel_dekoder.vhdl](knobelaufgabe/wuerfel_dekoder.vhdl)
