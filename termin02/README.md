## Termin 2: Einführung in das Arbeiten mit GHDL und GTKWAVE
### Aufgabe 1: Testen sie einfache boolesche Funktion
- Übersetzen von `oder.vhdl`:
    ```
    ghdl -a oder.vhdl
    ```
    `-a`: analysiert den VHDL Quellcode


- Übersetzen von der Testbench `oder_tb.vhdl`
  ```
  ghdl -a oder_tb.vhdl
  ```


- Quelltexte zusammenfassen für `oder_tb`
  ```
  ghdl -e oder_tb
  ```
  `-e`: Elaborate eines oder mehrerer bereits analysierten Quelltexte


- Simulation laufen lassen
  ```
  ghdl -r oder_tb --vcd=oder.vcd
  ```
  - `-r`: run
  - `--vcd`: Speichert Ergebnis in einer .vcd waveform Datei zum späteren betrachten


- Ergebnisse betrachten mit `gtkwave`
  ```
  gtkwave oder.vcd
  ```
  ![gtkwave Screenshot](aufgabe_1/img.png?raw=true "gtkwave Screenshot")
  Inputs `a` und `b`, Output `y` zeigt das Ergebnis der oder Funktion