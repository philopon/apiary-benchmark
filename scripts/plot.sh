#!/bin/bash

SDIR=$(cd `dirname $0`; pwd)
file=$1

gnuplot -e "ifile=\"$file.dat\";ofile=\"$file.png\"" $SDIR/plot.gnuplot
