apiary-benchmark
===
benchmark result of haskell lightweight web frameworks.

Frameworks
---
* [apiary](src/apiary.hs)
* [scotty](src/scotty.hs)
* [Spock](src/Spock.hs)
* [yesod](src/yesod.hs)
* [wai-routes](src/wai-routes.hs)

How to run
---
```.sh
cabal update
cabal sandbox init
cabal get apiary-1.4.3 Spock-0.7.9.0 scotty-0.9.1 yesod-core-1.4.10 wai-routes-0.7.0
cabal install -fapiary -fSpock -fyesod-core -fscotty -fwai-routes --only-dependencies
./scripts/all.sh apiary-1.4.3 Spock-0.7.9.0 scotty-0.9.1 yesod-core-1.4.10 wai-routes-0.7.0
```

Benchmarks
---
1. HELLO (no capture)
2. PARAM (capture route parameter)
3. DEEP  (deep and many routes)
3. AFTER_DEEP (after DEEP route)

Machines
---

### tama

```.sh
% uname -a
Linux tama 3.17.8-gentoo-r1 #28 SMP Sat Mar 21 20:13:44 JST 2015 x86_64 Intel(R) Core(TM) i3-2120T CPU @ 2.60GHz GenuineIntel GNU/Linux
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

|machine  |ghc    |framework        |HELLO   |PARAM   |DEEP    |AFTER_DEEP|
|---------|-------|-----------------|--------|--------|--------|----------|
|tama     |7.8.3  |apiary-1.4.3     |34919.81|27269.06|31821.30|36002.25  |
|tama     |7.8.3  |wai-routes-0.7.0 |38258.45|22663.17|30882.92|38904.70  |
|tama     |7.8.3  |Spock-0.7.9.0    |27983.59|23729.49|26908.00|29449.15  |
|tama     |7.8.3  |yesod-core-1.4.10|24744.47|21880.16|23970.68|28265.04  |
|tama     |7.8.3  |scotty-0.9.1     |28259.78|18417.71|2630.02 |9764.79   |

References
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
