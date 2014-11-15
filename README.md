apiary-benchmark
===
benchmark result of haskell lightweight web frameworks.

Frameworks
---
* [apiary](src/apiary.hs)
* [scotty](src/scotty.hs)
* [Spock](src/Spock.hs)
* [yesod](src/yesod.hs)

How to run
---
```.sh
cabal update
cabal sandbox init
cabal get apiary-1.0.0 Spock-0.7.0.0 scotty-0.9.0 yesod-core-1.4.1.1
cabal install ./apiary-1.0.0 ./Spock-0.7.0.0 ./scotty-0.9.0 ./yesod-core-1.4.1.1
./scripts/all.sh apiary-1.0.0 Spock-0.7.0.0 scotty-0.9.0 yesod-core-1.4.1.1
```

Benchmarks
---
1. HELLO (no capture)
2. PARAM (capture route parameter)
3. DEEP  (deep and many routes)
3. AFTER_DEEP (after DEEP route)

Machines
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

Results
---

### single thread

![result](./results/1/result-server1.png)

|machine  |ghc    |framework         |HELLO   |PARAM   |DEEP    |AFTER_DEEP|
|---------|-------|------------------|--------|--------|--------|----------|
|server1  |7.8.3  |apiary-1.1.1      |34120.45|27846.90|31854.80|35701.76  |
|server1  |7.8.3  |yesod-core-1.4.3.1|31223.75|26601.20|26195.45|32785.39  |
|server1  |7.8.3  |Spock-0.7.4.0     |28428.52|24374.22|26668.39|29481.10  |
|server1  |7.8.3  |scotty-0.9.0      |28953.95|17669.20|2553.66 |9623.94   |

### multi thread (N=2)

![result](./results/2/result-server1.png)

|machine  |ghc    |framework         |HELLO   |PARAM   |DEEP    |AFTER_DEEP|
|---------|-------|------------------|--------|--------|--------|----------|
|server1  |7.8.3  |apiary-1.1.1      |52409.01|42149.52|48054.33|55067.85  |
|server1  |7.8.3  |yesod-core-1.4.3.1|50570.08|42072.97|42463.33|52852.78  |
|server1  |7.8.3  |Spock-0.7.4.0     |45461.93|38571.19|42320.98|47458.84  |
|server1  |7.8.3  |scotty-0.9.0      |46735.32|29034.55|4744.13 |16226.90  |

References
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
