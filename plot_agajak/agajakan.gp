#!/usr/bin/gnuplot

year="2012"


#set nokey
set xdata time
set timefmt "%d.%m %H:%M"

set title "температура по м/с Агаякан 1 июня - 1 ноября"
#plot ["01.03.".year:] []
plot ["1.06":"1.11"] [-40:40]\
  "../dat/24684_2011"    using 1:3 with lines lc 4 lw 1 lt 1 title "температура, 2011",\
  "../dat/24684_2011_a"  using 1:2 with lines lc 4 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2012"    using 1:3 with lines lc 3 lw 1 lt 1 title "температура, 2012",\
  "../dat/24684_2012_a"  using 1:2 with lines lc 3 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2013"    using 1:3 with lines lc 2 lw 1 lt 1 title "температура, 2013",\
  "../dat/24684_2013_a"  using 1:2 with lines lc 2 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2014"    using 1:3 with lines lc 1 lw 1 lt 1 title "температура, 2014",\
  "../dat/24684_2014_a"  using 1:2 with lines lc 1 lw 3 lt 1 title "среднесуточная",\
  "pohod.dat" using 1:2 with impulse lc 0 notitle,\
  "pohod.dat" using 1:(-$2) with impulse lc 0 notitle,\
0 lc 0 title ""


pause -1
set terminal png
set output "agajakan.png"

replot
set terminal x11

set title "температура по м/с Агаякан 26 августа - 11 сентября"
plot ["26.08":"11.09"] [-10:30]\
  "../dat/24684_2011"    using 1:3 with lines lc 4 lw 1 lt 1 title "температура, 2011",\
  "../dat/24684_2011_a"  using 1:2 with lines lc 4 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2012"    using 1:3 with lines lc 3 lw 1 lt 1 title "температура, 2012",\
  "../dat/24684_2012_a"  using 1:2 with lines lc 3 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2013"    using 1:3 with lines lc 2 lw 1 lt 1 title "температура, 2013",\
  "../dat/24684_2013_a"  using 1:2 with lines lc 2 lw 3 lt 1 title "среднесуточная",\
  "../dat/24684_2014"    using 1:3 with lines lc 1 lw 1 lt 1 title "температура, 2014",\
  "../dat/24684_2014_a"  using 1:2 with lines lc 1 lw 3 lt 1 title "среднесуточная",\
0 lc 0 title ""

pause -1
set terminal png
set output "agajakan1.png"

replot
