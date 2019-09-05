# GNUPlot command file for generating the response function for
# AMAXTB in the WOFOST system description
set termopt enhanced 
set xrange [0.0:2.0]
set yrange [0:35]
#set terminal svg size 800,600 enhanced font 'Verdana,12'
set terminal pdf
set output 'figure_AMAXTB.pdf'
set xlabel 'Development stage [-]'
set ylabel 'Max Leaf CO_{2} assimilation rate [kg ha^{-1} hr^{-1}]'
plot 'figure_AMAXTB.csv' using 1:2 with lines t'' lt -1 lw 2,
set output
#set term X11
     
