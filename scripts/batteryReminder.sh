#!/bin/sh
COUNT=0
REMIND=15
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
while sleep 5;
do
    if [ $BAT -le $REMIND ];
    then
        if [ $COUNT -eq 0 ];
        then
            notify-send -i none "BATTERY LESSER THAN 15%!!"
            echo -e "notified"
            COUNT=1
        fi
    elif [ $BAT -gt $REMIND ]
    then
        echo -e "skipped"
        if [ $COUNT -eq 1 ];
        then
            COUNT=0
        fi
    fi
done
