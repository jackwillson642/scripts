#!/bin/bash

name=./$1

touch $name.ms

echo ".TL" > $name.ms
echo ".AU"  > $name.ms
echo ".AI"  > $name.ms
