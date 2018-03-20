#!/usr/bin/gnuplot

#set nokey
set xdata time
set timefmt "%d.%m.%Y %H:%M"

set title "температура по м/с Пуэрто-Монтт"
plot ["01.01.2014":"01.02.2014"]\
  "data.txt"  using 1:5 with lines lc 4 lw 1 lt 1 title "температура, 2011"


pause -1
set terminal png
set output "temp.png"

replot
