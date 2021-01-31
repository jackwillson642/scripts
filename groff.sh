#!/bin/bash

name=./$1

echo $name.ms | entr groff -ms $name.ms -Tpdf > $name.pdf
