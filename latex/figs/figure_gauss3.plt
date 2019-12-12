$vertical1 << EOD
0.1112 0 
0.1112 1.1381
EOD
$vertical2 << EOD
0.50 0 
0.50 2.125
EOD
$vertical3 << EOD
0.8873 0 
0.8873 4.1604
EOD
$gauss3p << EOD
0 0.8558384773662551
0.50 2.125
1.0 4.752678801962303
EOD
$trapezoid << EOD
0. 1
1 4
EOD
set encoding utf8
set termopt enhanced
set terminal pdf
set output 'figure_gauss3.pdf'
set xrange [0:1]
set yrange [0:6]
set xlabel 'Integration interval'
set ylabel 'Function value'
plot x**3 + 2*x**2 + x + 1 t'' lt rgb "black" lw 2.5, \
     $vertical1 using 1:2 t'' with lines dashtype 2 lt rgb "black",\
     $vertical2 using 1:2 t'' with lines dashtype 2 lt rgb "black",\
     $vertical3 using 1:2 t'' with lines dashtype 2 lt rgb "black",\
     $gauss3p using 1:2 t'Gaussian 3 point' with lines lt rgb "forest-green" lw 2
     
set label "0.5 - γ" at 0.1112+0.01, 0.2 textcolor "black"
set label "0.5 + γ" at 0.8873+0.01, 0.2 textcolor "black"
set output
set terminal windows
replot
unset label
