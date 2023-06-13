## Termin 5: Operationen für eine ALU
### Aufgabe 1: ODER als 4-Bit ALU-Operation aus einer vorgegebenen Entity ODER

Die Entity [oder.vhdl](aufgabe_1/oder.vhdl) wurde vier mal in [alu4or2.vhdl](aufgabe_1/alu4or2.vhdl) eingebunden. 


### Aufgabe 2: UND als 4-Bit ALU-Operation als Datenfluss

- Die Datei [alu4and2.vhdl](aufgabe_2/alu4and2.vhdl) enthält nun keine Entitys mehr, sondern nur noch Datenflussoperationen.
- Die Testbench [alu4and2_tb.vhdl](aufgabe_2/alu4and2_tb.vhdl) wurde ebenfalls angepasst.

### Aufgabe 3: XOR als 4-Bit ALU-Operation, diesmal mit "Process"

- Die Datei [alu4exor2.vhdl](aufgabe_3/alu4exor2.vhdl) enthält nun einen Process mit for loop.
- Die Testbench [alu4exor2_tb.vhdl](aufgabe_3/alu4exor2_tb.vhdl) wurde ebenfalls angepasst.

### Knobelaufgabe: Erstellen sie eine generische UND-ALU-Operation mit wählbarer Breite

Hier bestand der Trick in [alu_n_and2.vhdl](knobelaufgabe/alu_n_and2.vhdl) darin, dass Generic `width` aus der Testbench [alu_n_and2_tb.vhdl](knobelaufgabe/alu_n_and2_tb.vhdl) `and2_0: alu_n_and2 generic map` auszulesen und die Größen entsprechend dynamisch `std_logic_vector(width-1 downto 0)` anzugeben.
