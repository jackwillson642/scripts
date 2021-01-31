#!/bin/bash

# This script automatically checks the id and property and enables touch to tap for you using xinput

a=$(xinput | grep Touchpad | awk '{ print $6 }')
b=${a:3:5}
c=$(xinput list-props $b | grep 'Tapping Enabled (' | awk '{ print $4 }')
d=${c:1:3}

xinput set-prop $b $d 1
