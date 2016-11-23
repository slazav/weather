#!/usr/bin/gnuplot

#set nokey
set xdata time
set timefmt "%d.%m %H:%M"

set title "Temperature, Tromso 1 Mar - 1 May"
#plot ["01.03.".year:] []
plot ["1.03":"1.05"] [-15:30]\
  "../dat/01026_2010"    using 1:3 with lines lc 1 lw 1 lt 1 title "2010",\
  "../dat/01026_2010_a"  using 1:2 with lines lc 1 lw 3 lt 1 title "day average",\
  "../dat/01026_2011"    using 1:3 with lines lc 2 lw 1 lt 1 title "2011",\
  "../dat/01026_2011_a"  using 1:2 with lines lc 2 lw 3 lt 1 title "day average",\
  "../dat/01026_2012"    using 1:3 with lines lc 3 lw 1 lt 1 title "2012",\
  "../dat/01026_2012_a"  using 1:2 with lines lc 3 lw 3 lt 1 title "day average",\
  "../dat/01026_2013"    using 1:3 with lines lc 4 lw 1 lt 1 title "2013",\
  "../dat/01026_2013_a"  using 1:2 with lines lc 4 lw 3 lt 1 title "day average",\
  "../dat/01026_2014"    using 1:3 with lines lc 5 lw 1 lt 1 title "2014",\
  "../dat/01026_2014_a"  using 1:2 with lines lc 5 lw 3 lt 1 title "day average",\
  "../dat/01026_2015"    using 1:3 with lines lc 6 lw 1 lt 1 title "2015",\
  "../dat/01026_2015_a"  using 1:2 with lines lc 6 lw 3 lt 1 title "day average",\
0 lc 0 title ""


pause -1
set terminal png
set output "tromso_t.png"

replot
set terminal x11


set title "Snow depth, Tromso 1 Mar - 1 May"
#plot ["01.03.".year:] []
plot ["1.03":"1.05"] [0:150]\
  "../dat/01026_2006"    using 1:4 with lines lc 1 lw 2 lt 1 title "2006",\
  "../dat/01026_2007"    using 1:4 with lines lc 2 lw 2 lt 1 title "2007",\
  "../dat/01026_2008"    using 1:4 with lines lc 3 lw 2 lt 1 title "2008",\
  "../dat/01026_2009"    using 1:4 with lines lc 4 lw 2 lt 1 title "2009",\
  "../dat/01026_2010"    using 1:4 with lines lc 5 lw 2 lt 1 title "2010",\
  "../dat/01026_2011"    using 1:4 with lines lc 6 lw 2 lt 1 title "2011",\
  "../dat/01026_2012"    using 1:4 with lines lc 7 lw 2 lt 1 title "2012",\
  "../dat/01026_2013"    using 1:4 with lines lc 8 lw 2 lt 1 title "2013",\
  "../dat/01026_2014"    using 1:4 with lines lc 9 lw 2 lt 1 title "2014",\
  "../dat/01026_2015"    using 1:4 with lines lc 10 lw 2 lt 1 title "2015",\
0 lc 0 title ""


pause -1
set terminal png
set output "tromso_sn.png"

replot
set terminal x11

