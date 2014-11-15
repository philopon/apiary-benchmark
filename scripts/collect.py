#!/usr/bin/env python
# for f in `ls */*.log`; do tail -n 1 $f; done | python ../../../collect.py > results.dat

import sys

results = {}

benchs = [ 'HELLO'
         , 'PARAM'
         , 'DEEP'
         , 'AFTER_DEEP'
         ]

fws = set()
machines = set()
for line in sys.stdin:
    sp = line.split(',')
    machine=sp[0]
    ghc = sp[1]
    fw = sp[2]
    bench  = sp[3]
    result = sp[6]

    fws.add(fw)
    machines.add(machine)

    if not machine in results:
        results[machine] = {}

    if not fw in results[machine]:
        results[machine][fw] = {}

    results[machine][fw][bench] = result

maxMachineLen = len(max([' machine '] + list(machines), key=len))
maxFwLen = len(max(['framework'] + list(fws), key=len))

for machine in machines:
    print 'result-' + machine
    with open('result-' + machine + '.dat', 'w') as dat:
        with open('result.md', 'w') as md:
            print >> dat, "FRAMEWORK".ljust(maxFwLen + 1),
            mdhdr  = '|' + 'machine'.ljust(maxMachineLen) + '|ghc    |' + "framework".ljust(maxFwLen) + '|'
            mdline = '|' + '-' * maxMachineLen + '|-------|' + '-' * maxFwLen + '|'
            for bench in benchs:
                l = max(8, len(bench))
                print >> dat, bench.ljust(l + 1),
                mdhdr  += bench.ljust(l) + '|'
                mdline += '-' * l + '|'
            print >> dat
            print >> md, mdhdr
            print >> md, mdline

            for fw in fws:
                mdres = '|' + machine.ljust(maxMachineLen) + '|' + ghc.ljust(7) + '|' + fw.ljust(maxFwLen) + '|'
                print >> dat, fw.ljust(maxFwLen + 1),
                for bench in benchs:
                    l = max(8, len(bench))
                    print >> dat, results[machine][fw][bench].ljust(l + 1),
                    mdres += results[machine][fw][bench].ljust(l) + '|'
                print >> dat
                print >> md, mdres
