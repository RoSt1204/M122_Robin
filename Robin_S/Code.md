#!/bin/bash

BitcoinKurs=`echo "$(curl -s https://api.binance.com/api/v1/ticker/price?symbol=BTCUSDT | jq .price | xargs)"`
BitcoinKurs=`printf "%.0f\n" $BitcoinKurs`

bitcoin () {
        if [ "$BitcoinKurs" -lt "31000" ];then
                echo "Der Bitcoin ist zurzeit $BitcoinKurs $ wert" | /usr/sbin/ssmtp stabroob@gmail.com
        elif [ "$BitcoinKurs" -gt "35000" ];then
                echo "Der Bitcoin ist zurzeit $BitcoinKurs $ wert" | /usr/sbin/ssmtp stabroob@gmail.com
        else
                echo "nothing"
        fi
}
bitcoin


