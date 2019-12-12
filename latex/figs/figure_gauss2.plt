$vertical1 << EOD
0.19 0 
0.19 1.2622
EOD
$vertical2 << EOD
0.81 0 
0.81 3.122
EOD
$trapezoid << EOD
0. 1
1 4
EOD
set encoding utf8
set termopt enhanced
set terminal pdf
set output 'figure_gauss2.pdf'
set xrange [0:1]
set yrange [0:4.5]
set xlabel 'Integration interval'
set ylabel 'Function value'
plot 2*x**2 + x + 1 t'' lt rgb "black" lw 2.5, \
     $vertical1 using 1:2 t'' with lines dashtype 2 lt rgb "black",\
     $vertical2 using 1:2 t'' with lines dashtype 2 lt rgb "black",\
     $trapezoid using 1:2 t'Trapezoidal' with lines lt rgb "blue" lw 2 ,\
     2.9997*x + 0.696 t'Gaussian 2 point' with lines lt rgb "forest-green" lw 2
     
set output
set terminal windows
replot
