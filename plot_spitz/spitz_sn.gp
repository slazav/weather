#!/usr/bin/gnuplot

year="2012"


#set nokey
set xdata time
set timefmt "%d.%m %H:%M"

set title "глубина снега по а/п Свальбард 1 января - 1 июня"
#plot ["01.03.".year:] []
plot ["1.01":"1.06"] [0:]\
  "../dat/01008_2011"    using 1:4 with lines lc 1 lw 1 lt 1 title "2011",\
  "../dat/01008_2012"    using 1:4 with lines lc 2 lw 1 lt 1 title "2012",\
  "../dat/01008_2013"    using 1:4 with lines lc 3 lw 1 lt 1 title "2013",\
  "../dat/01008_2014"    using 1:4 with lines lc 4 lw 1 lt 1 title "2014",\
  "../dat/01008_2015"    using 1:4 with lines lc 5 lw 1 lt 1 title "2015",\
  "../dat/01008_2016"    using 1:4 with lines lc 6 lw 1 lt 1 title "2016",\
  "../dat/01008_2017"    using 1:4 with lines lc 7 lw 1 lt 1 title "2017",\
0 lc 0 title ""


pause -1
set terminal png
set output "spitz_sn.png"

replot