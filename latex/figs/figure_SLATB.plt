# GNUPlot command file for generating the response function for
# AMAXTB in the WOFOST system description
set termopt enhanced 
set xrange [0.0:2.0]
set yrange [0:0.008]
#set terminal svg size 800,600 enhanced font 'Verdana,12'
set terminal pdf
set output 'figure_SLATB.pdf'
set xlabel 'Development stage [-]'
set ylabel 'Specific leaf area [ha kg^{-1}]'
plot 'figure_SLATB.csv' using 1:2 with lines t'' lt -1 lw 2,
set output
#set term X11
     
