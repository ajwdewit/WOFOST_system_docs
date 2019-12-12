$vertical << EOD
0.5 0 
0.5 1.707
EOD
set encoding utf8
set termopt enhanced
set terminal pdf
set output 'figure_gauss1.pdf'
set xrange [0:1]
set yrange [0:4]
set xlabel 'Integration interval'
set ylabel 'Function value'
plot 2*x**1.5 + 1 t'' lt rgb "black" lw 1.5, \
     1 t'Rectangular' lt rgb "medium-blue" lw 1.5, \
     2*0.5**1.5 + 1 t'Gaussian 1 point' lt rgb "forest-green" lw 1.5, \
     $vertical using 1:2 t'' with lines dashtype 2 lt rgb "black"
set output
set terminal windows
replot
