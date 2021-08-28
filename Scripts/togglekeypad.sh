#!/bin/bash
if [ $(synclient -l | grep 'TouchpadOff' |grep -Eo '0|1') = '0' ];then synclient TouchpadOff=1;else synclient TouchpadOff=0;fi
