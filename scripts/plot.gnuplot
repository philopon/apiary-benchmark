set terminal pngcairo font "sans-serif"
set output ofile

set title "Benchmark" font "sans-serif,18"

set style histogram clustered
set style fill solid border lc rgb "black"

set xlabel 'Framework'
set xtics font "sans-serif,10"

set ylabel 'throughput (req/sec)'
set ytics font "sans-serif,10"

set key spacing 1 samplen 1 font "sans-serif,10"

plot ifile using 2:xtic(1) with histogram title columnhead,\
     ifile using 3:xtic(1) with histogram title columnhead,\
     ifile using 4:xtic(1) with histogram title columnhead,\
     ifile using 5:xtic(1) with histogram title columnhead
