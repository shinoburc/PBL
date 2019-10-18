#!/bin/sh

for diag in `ls *.diag`;
do
  blockdiag -f /usr/share/fonts/opentype/ipafont-mincho/ipam.ttf --antialias $diag
done
