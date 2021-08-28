#!/bin/sh
while :; do
    groff -ms -T pdf $1 > $2
    sleep 1
done

