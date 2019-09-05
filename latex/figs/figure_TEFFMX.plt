# GNUPlot command file for generating the response function for
# vernalization in the WOFOST system description
# Output is generated as a PNG file on figure7.png
# data points are read from figure7.csv
set xrange [0:40]
set yrange [0:30]

set parametric
set style arrow 1 head filled size screen 0.025,30,45 ls 8

set arrow 1 from 8,5 to 8,0.5 as 1
set arrow 2 from 30,17 to 30,21.5 as 1

#set terminal svg size 800,600 enhanced font 'Verdana,12'
set terminal pdf
set output 'figure_TEFFMX.pdf'
set xlabel 'Daily average temperature [ºC]'
set ylabel 'Effective daily temperature[ºC]'
set label 'Tmax,e' at 30,16 center
set label 'Tb' at 8,6 center
plot 'figure_TEFFMX.csv' using 1:2 with lines t'' lt -1 lw 2,



set output
#set term X11
     
