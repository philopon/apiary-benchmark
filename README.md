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
cabal install apiary-1.4.3 Spock-0.7.9.0 scotty-0.9.1 yesod-core-1.4.10 wai-routes-0.7.0
cabal install -fapiary -fSpock -fyesod-core -fscotty -fwai-routes --only-dependencies
./scripts/all.sh apiary-1.2.3 Spock-0.7.7.0 scotty-0.9.1 yesod-core-1.4.7.2 wai-routes-0.7.0
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
|server1  |7.8.4  |apiary-1.3.0      |31520.82|24457.39|28788.55|32261.40  |
|server1  |7.8.4  |Spock-0.7.7.0     |26104.94|23017.22|25273.03|27661.29  |
|server1  |7.8.4  |yesod-core-1.4.8  |23629.91|18810.28|20557.09|22911.18  |
|server1  |7.8.4  |scotty-0.9.1      |27098.37|16637.75|2579.80 |9164.82   |

References
---
1. [agrafix/Spock-scotty-benchmark](https://github.com/agrafix/Spock-scotty-benchmark)
