#!/bin/bash

while true
do
val=$(acpi | awk '{ print $4 }' | cut -d "%" -f 1)
stat=$(acpi | awk '{ print $3 }' | cut -d "," -f 1)

echo $val

if [ $val -lt 16 ] && [ $stat = 'Discharging' ]
then
    notify-send -u critical 'Battery Low'
    # eject
fi

if [ $stat = 'Full' ]
then
    notify-send 'Battery Full'
    # eject
fi

sleep 500
done

exit 0
