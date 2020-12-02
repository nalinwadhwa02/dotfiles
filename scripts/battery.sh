#!/bin/bash
# baraction.sh script for spectrwm status bar

SLEEP_SEC=1  # set bar_delay = 5 in /etc/spectrwm.conf
#loops forever outputting a line every SLEEP_SEC secs
while :; do
    MUTE=$( pulseaudio-ctl |grep "Is sink muted" | grep -Eo "no|yes")
    if [ "$MUTE" = "yes" ];then MUTE="婢";else MUTE="";fi
    BAT=$(cat "/sys/class/power_supply/BAT0/capacity")
    STAT=$(cat "/sys/class/power_supply/BAT0/status")
    if [ "$STAT" = "Charging" ];then STAT="";else STAT="";fi
    echo -E "[:$(date +%a:%d:%b)] [$MUTE:$(pulseaudio-ctl full-status| grep -Eo "[0-9]{1,4}")%] [ﯱ:$(nmcli -t device status| grep wlo1:wifi: | grep -oh "\w*connected")] [$STAT:$BAT%] [:$(date +%H:%M)]"
    sleep $SLEEP_SEC
done

