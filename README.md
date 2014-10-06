benchmark
===
benchmark result of haskell lightweight web frameworks.

libraries
---
* apiary
* scotty
* Spock
* yesod LiteApp

how to run
---
```.sh
cabal update
cabal sandbox init
cabal get apiary-1.0.0 Spock-0.7.0.0 scotty-0.9.0 yesod-core-1.4.1.1
cabal install ./apiary-1.0.0 ./Spock-0.7.0.0 ./scotty-0.9.0 ./yesod-core-1.4.1.1
./scripts/all.sh apiary-1.0.0 Spock-0.7.0.0 scotty-0.9.0 yesod-core-1.4.1.1
```

benchmarks
---
1. HELLO (no capture)
2. PARAM (capture route parameter)
3. DEEP  (deep and many routes)
3. AFTER_DEEP (after DEEP route)

machines
---

### server1

```.sh
% uname -a
Linux server1 3.2.0-4-amd64 #1 SMP Debian 3.2.57-3+deb7u2 x86_64 GNU/Linux
% cat /proc/cpuinfo | grep 'model name'
model name	: Intel(R) Core(TM) i3-2120T CPU @ 2.60GHz
model name	: Intel(R) Core(TM) i3-2120T CPU @ 2.60GHz
model name	: Intel(R) Core(TM) i3-2120T CPU @ 2.60GHz
model name	: Intel(R) Core(TM) i3-2120T CPU @ 2.60GHz
% cat /proc/meminfo | grep MemTotal
MemTotal:       16354960 kB
```

results
---

### single thread

![result](./results/1/result-server1.png)

|machine  |ghc    |framework         |HELLO   |PARAM   |DEEP    |AFTER_DEEP|
|---------|-------|------------------|--------|--------|--------|----------|
|server1  |7.8.3  |apiary-1.0.0      |34220.78|27831.34|32109.75|37766.45  |
|server1  |7.8.3  |Spock-0.7.0.0     |27520.06|24105.22|26100.14|28832.08  |
|server1  |7.8.3  |scotty-0.9.0      |28354.12|16341.25|2597.80 |9322.60   |
|server1  |7.8.3  |yesod-core-1.4.1.1|5541.77 |5322.95 |5213.03 |5675.90   |

references
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
