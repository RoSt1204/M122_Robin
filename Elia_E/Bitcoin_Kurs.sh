#==================Header==================
#Syntax: Bash

#Beschreibung: Liest den Bitcoin Kurs ein und schickt bei einem gewissen Wert eine E-Mail an mich.

#Autor: Elia El-Alam

#Erstellungsdatum: 1.07.2022

#Aenderung: 11.07.2022

#==================Header==================


#!/bin/bash

BitcoinKurs=`echo "$(curl -s https://api.binance.com/api/v1/ticker/price?symbol=BTCUSDT | jq .price | xargs)"` #findet den Bitcoin Preis
BitcoinKurs=`printf "%.0f\n" $BitcoinKurs` #Rundet den Bitcoin Preis

bitcoin () {    #erstellt eine Funktion
        if [ "$BitcoinKurs" -lt "30000" ];then
                echo "Der Bitcoin Kurs ist $BitcoinKurs $" | /usr/sbin/ssmtp elalamjuchlielia@gmail.com #Schaut ob Bitcoin unter 30000 oder über 40000 ist.
        elif [ "$BitcoinKurs" -gt "40000" ];then                                                        #Wenn ja bekomme ich ein Mail.
                echo "Der Bitcoin Kurs ist $BitcoinKurs $" | /usr/sbin/ssmtp elalamjuchlielia@gmail.com
        else
                echo "nothing"
        fi
}
bitcoin #führt die Funktion aus




