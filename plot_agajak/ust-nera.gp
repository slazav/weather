#!/usr/bin/gnuplot

year="2012"


#set nokey
set xdata time
set timefmt "%d.%m %H:%M"
set title "Усть-Нера"

#plot ["01.03.".year:] []
plot ["1.06":"1.11"] [-40:40]\
  "../dat/24585_2013"    using 1:3 with lines lc 1 lw 1 lt 1 title "температура, 2013",\
  "../dat/24585_2013_a"  using 1:2 with lines lc 1 lw 3 lt 1 title "среднесуточная",\
  "../dat/24585_2012"    using 1:3 with lines lc 2 lw 1 title "2012",\
  "../dat/24585_2012_a"  using 1:2 with lines lc 2 lw 3 title "среднесуточная",\
  "../dat/24585_2011"    using 1:3 with lines lc 3 lw 1 title "2011",\
  "../dat/24585_2011_a"  using 1:2 with lines lc 3 lw 3 title "среднесуточная",\
0 lc 0 title ""

pause -1
set terminal png
set output "ust-nera.png"

replot
