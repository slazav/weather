#!/usr/bin/gnuplot

year="2012"


#set nokey
set xdata time
set timefmt "%d.%m %H:%M"
set key top right

set title "скорость ветра по а/п Свальбард 1 января - 1 июня"
#plot ["01.03.".year:] []
plot ["1.01":"1.06"] [0:]\
  "../dat/01008_2011"    using 1:5 with lines lc 1 lw 1 lt 1 title "скорость ветра, 2011",\
  "../dat/01008_2011_a"  using 1:4 with lines lc 1 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2012"    using 1:5 with lines lc 2 lw 1 lt 1 title "скорость ветра, 2012",\
  "../dat/01008_2012_a"  using 1:4 with lines lc 2 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2013"    using 1:5 with lines lc 3 lw 1 lt 1 title "скорость ветра, 2013",\
  "../dat/01008_2013_a"  using 1:4 with lines lc 3 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2014"    using 1:5 with lines lc 4 lw 1 lt 1 title "скорость ветра, 2014",\
  "../dat/01008_2014_a"  using 1:4 with lines lc 4 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2015"    using 1:5 with lines lc 5 lw 1 lt 1 title "скорость ветра, 2015",\
  "../dat/01008_2015_a"  using 1:4 with lines lc 5 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2016"    using 1:5 with lines lc 6 lw 1 lt 1 title "скорость ветра, 2016",\
  "../dat/01008_2016_a"  using 1:4 with lines lc 6 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2017"    using 1:5 with lines lc 7 lw 1 lt 1 title "скорость ветра, 2017",\
  "../dat/01008_2017_a"  using 1:4 with lines lc 7 lw 3 lt 1 title "среднесуточная",\
0 lc 0 title ""


pause -1
set terminal png size 2000,600
set output "spitz_w.png"

replot
set terminal x11

set title "скорость ветра по а/п Свальбард 15 апреля - 10 мая"
plot ["15.04":"10.05"] [0:]\
  "../dat/01008_2011"    using 1:5 with lines lc 1 lw 1 lt 1 title "скорость ветра, 2011",\
  "../dat/01008_2011_a"  using 1:4 with lines lc 1 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2012"    using 1:5 with lines lc 2 lw 1 lt 1 title "скорость ветра, 2012",\
  "../dat/01008_2012_a"  using 1:4 with lines lc 2 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2013"    using 1:5 with lines lc 3 lw 1 lt 1 title "скорость ветра, 2013",\
  "../dat/01008_2013_a"  using 1:4 with lines lc 3 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2014"    using 1:5 with lines lc 4 lw 1 lt 1 title "скорость ветра, 2014",\
  "../dat/01008_2014_a"  using 1:4 with lines lc 4 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2015"    using 1:5 with lines lc 5 lw 1 lt 1 title "скорость ветра, 2015",\
  "../dat/01008_2015_a"  using 1:4 with lines lc 5 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2016"    using 1:5 with lines lc 6 lw 1 lt 1 title "скорость ветра, 2016",\
  "../dat/01008_2016_a"  using 1:4 with lines lc 6 lw 3 lt 1 title "среднесуточная",\
  "../dat/01008_2017"    using 1:5 with lines lc 7 lw 1 lt 1 title "скорость ветра, 2017",\
  "../dat/01008_2017_a"  using 1:4 with lines lc 7 lw 3 lt 1 title "среднесуточная",\
0 lc 0 title ""

pause -1
set terminal png size 800,600
set output "spitz1_w.png"

replot
