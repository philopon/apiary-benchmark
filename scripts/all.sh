#!/bin/bash

if [ $# -eq 0 ]; then
  cat <<EOD
USAGE: $0 framework-version framework-version ...

env:
  NTHREAD: num server thread(default: 1)
  MACHINE: machine name(default: `uname -n`)
  BENCH_TIME: benchmark time(default: 30s)
  NBENCH:     iterete par benchmark(default 10)
  PORT:       server port(default: 8080)
EOD
else
  NTHREAD=${NTHREAD:-1}
  MACHINE=${MACHINE:-`uname -n`}
  BENCH_TIME=${BENCH_TIME:-30s}
  NBENCH=${NBENCH:-10}
  PORT=${PORT:-8080}
fi

SDIR=$(cd `dirname $0`; pwd)

for PKG in $@; do
  FRAMEWORK=`echo $PKG | awk -F'-' '{print $1}'`
  VERSION=`echo $PKG | awk -F'-' '{print $2}'`

  cabal sandbox hc-pkg unregister $FRAMEWORK
  [ -e ./$PKG ] || cabal get $PKG
  cabal install ./$PKG
  cabal clean
  cabal configure -f$FRAMEWORK
  cabal build $FRAMEWORK

  mkdir -p results/$NTHREAD/$MACHINE/$PKG
  for BENCH in HELLO PARAM DEEP AFTER_DEEP; do
    $SDIR/bench.sh $FRAMEWORK $BENCH $NTHREAD $BENCH_TIME $NBENCH $PORT > results/$NTHREAD/$MACHINE/$PKG/$BENCH.log
  done
done

$SDIR/aggregate.sh
