#!/bin/sh
min=20
sl=10
flag=0
while :; do
    bat=$(cat /sys/class/power_supply/BAT0/capacity)
    if [ $bat -le $min ];then if [ $flag -le 0 ];then notify-send -u critical "BATTERY LOW" "Battery is lower than 10%! Charge your PC!";flag=1;fi;else flag=0;fi
    sleep $sl
done



