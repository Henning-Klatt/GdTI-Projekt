## Termin 1: Einführung in die Nutzung der Linux-Kommandozeile
### Aufgabe 1: los geht's
- `cp -r /import/grpdrvs/gdti_projekt_ws/termin01/ .`
- `cd termin01/`
- `ls`
- `rm loesch_mich.txt`
- `vim meine_erste_datei.txt`

### Aufgabe 2: Datei anzeigen
- `cat sortiere_mich.txt`
- `more sortiere_mich.txt`
- `echo "$(<sortiere_mich.txt)"`

### Aufgabe 3: grep, wc und sort
- `cat sortiere_mich.txt | wc` (Zeilen, Wörter, Bytes)
- `cat sortiere_mich.txt | grep -i "absicht"`
- `cat sortiere_mich.txt | sort -t " " -k 4 -g`

### Knobelaufgabe
- `cat sortiert.txt | head -n 5`
- `cat sortiert.txt | tail -n 5`
- `cat sortiert.txt | tail -n +6`
- `cat sortiert.txt | head -n -5`