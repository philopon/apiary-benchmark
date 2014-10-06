#!/bin/bash

SDIR=$(cd `dirname $0`; pwd)

RESULTDIR=${RESULTDIR:-$SDIR/../results}
MACHINE=${MACHINE:-`uname -n`}

for DIR in `find $RESULTDIR -mindepth 1 -maxdepth 1 -type d`; do
  echo $DIR
  cd $DIR
  bases=$(for FILE in `ls */*/*.log`; do
    tail -n 1 $FILE
  done | python $SDIR/collect.py)
done

