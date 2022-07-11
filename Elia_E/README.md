# Beschreibung

### In diesem Repository ist mein Projekt für das Modul 122. Mein Script schikt mir immer um 08:00 Uhr eine Mail, aber nur wenn der Kurs eine gewisse Wert hat. Wenn dieser Wert nicht erreicht ist wird im Terminal "nothing" ausgegeben.

# Benutzung des Script

### Um mein Script zu benutzen muss man zuerst einige Sachen beachten.
### 1. Man muss ssmtp installieren (sudo apt install ssmtp)
### 2. ssmtp muss man auch noch konfigurieren im File /etc/ssmtp/ssmtp.conf
![Mein ssmtp.conf](Bilder\ssmtp_conf.png)

### 3. Wenn man die benutzten Befehle wie curl nicht installiert hat, muss man diese noch installieren.
### 4. Wenn man will, dass das Script automatisch ausgeführt wird, muss man noch einen cronjob erstellen. Diesen erstellt man mit dem Befehl "crontab-e"

# UML 

### Hier sieht man noch mein Programm Grafisch dargestellt.
![Mein UML](Bilder\UML.png)