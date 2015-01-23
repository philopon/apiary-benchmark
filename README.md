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
cabal get apiary-1.2.3 Spock-0.7.7.0 scotty-0.9.1 yesod-core-1.4.7.2
cabal install -fapiary -fSpock -fyesod-core -fscotty --only-dependencies
./scripts/all.sh apiary-1.2.3 Spock-0.7.7.0 scotty-0.9.1 yesod-core-1.4.7.2
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
|server1  |7.8.4  |apiary-1.2.3      |33028.57|24887.66|30258.40|34416.20  |
|server1  |7.8.4  |Spock-0.7.7.0     |27029.75|23066.57|24823.20|27176.61  |
|server1  |7.8.4  |yesod-core-1.4.7.2|23569.27|19298.25|21279.81|24164.14  |
|server1  |7.8.4  |scotty-0.9.1      |26429.29|16579.25|2489.47 |9034.91   |

References
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
