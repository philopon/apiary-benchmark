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
|server1  |7.8.3  |apiary-1.0.0      |35121.97|27401.93|32020.55|36927.36  |
|server1  |7.8.3  |Spock-0.7.0.0     |29564.77|25068.84|27650.79|30473.47  |
|server1  |7.8.3  |yesod-core-1.4.1.1|30352.61|26005.59|25858.58|31440.22  |
|server1  |7.8.3  |scotty-0.9.0      |29274.93|17831.16|2715.35 |9204.24   |

### multi thread(N=2)

![result](./results/2/result-server1.png)

|machine  |ghc    |framework         |HELLO   |PARAM   |DEEP    |AFTER_DEEP|
|---------|-------|------------------|--------|--------|--------|----------|
|server1  |7.8.3  |apiary-1.0.0      |54335.27|43256.84|49367.39|57010.94  |
|server1  |7.8.3  |Spock-0.7.0.0     |46879.03|39323.39|43910.31|48677.40  |
|server1  |7.8.3  |yesod-core-1.4.1.1|48360.50|41236.62|41443.40|50272.83  |
|server1  |7.8.3  |scotty-0.9.0      |48024.96|29529.61|4983.43 |16134.54  |

references
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
