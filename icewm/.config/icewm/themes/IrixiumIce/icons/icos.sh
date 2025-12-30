#!/bin/bash
for i in ~/Downloads/NsCDE-master/xdg/icons/NsCDE/32x32/categories/*png; do
q=$(basename $i)
#echo $q
cp -v $i ${q%.png}_32x32.png
done
