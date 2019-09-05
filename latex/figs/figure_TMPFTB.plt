# GNUPlot command file for generating the response function for
# TMPFTB in the WOFOST system description
set termopt enhanced 
set xrange [0.0:40]
set yrange [0:1.2]
#set terminal svg size 800,600 enhanced font 'Verdana,12'
set terminal pdf
set output 'figure_TMPFTB.pdf'
set xlabel 'Day-time temperature [°C]'
set ylabel 'Reduction factor for max CO_{2} assim. rate [-]'
plot 'figure_TMPFTB.csv' using 1:2 with lines t'' lt -1 lw 2,
set output
