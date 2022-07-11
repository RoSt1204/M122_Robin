# Beschreibung des Codes
## Anfang
### Im Code wird als erstes die API abgelesen und in eine Variabel umgeformt.
## Mitte
### In diesem Teil wird gefiltert das wenn der Preis kleiner als 31000$ ist oder Grösser als 35000$ wird eine E-mail geschickt.

# Vorbereitung 
## Erste schritte 
### Ich musste als erstes den Mailclient(ssmtp) Herunterladen und Configurieren.
### Ich musste auch noch mehrere Tools herunterladen. 
### Dann habe ich ein sh und ein Crontable erstellt. In das sh kamm der Code und in den Crontable habe ich geschrieben das es immer um eins jeden tag das Mail schickt.

# Was macht das Programm
### In dem Script wird immer um 1 uhr in der Nacht das Script durch einen Crontab ausgeführt.
### Dann wird der Stand von Bitcoin überprüft und je nach stand eine E-Mail versendet.
### Wenn der Bitcoin unter 31000 oder über 35000 ist wird das Mail  versendet.
### Wenn es Dazwischen ist dann wird garnichts geschickt und im Terminal wird "Nothing" ausgegeben.