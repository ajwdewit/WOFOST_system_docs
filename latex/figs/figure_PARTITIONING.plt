# GNUPlot command file for generating the response function for
# TMPFTB in the WOFOST system description
set termopt enhanced 
set datafile separator ","
set xrange [0.0:2.0]
set yrange [0:1.25]
#set terminal svg size 800,600 enhanced font 'Verdana,12'
set terminal pdf
set output 'figure_PARTITIONING.pdf'
set xlabel 'Development stage [-]'
set ylabel 'Partitioned fraction [-]'
plot \
  for [i=2:4:1] \
    "figure_PARTITIONING.csv" using 1:(sum [col=i:4] column(col)) \
      title columnheader(i) \
      with filledcurves x1

set output
