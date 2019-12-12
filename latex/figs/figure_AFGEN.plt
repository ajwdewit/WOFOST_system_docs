$linearinterpolation << EOD
1 0 
5 2
8 5
9 9
EOD
#unset label
set encoding utf8
set termopt enhanced
set terminal pdf size 16cm,10cm
set output 'figure_AFGEN.pdf'
set xrange [0:10]
set yrange [0:10]
set xlabel 'X-values'
set ylabel 'Y values'
plot $linearinterpolation using 1:2 with linespoints t'' lt rgb "black" lw 1.5 pt 7
set label "x1,y1" at 1-0.25, 0+0.35 textcolor "black"
set label "x2,y2" at 5-0.35, 2+0.35 textcolor "black"
set label "x3,y3" at 8-0.4, 5+0.35 textcolor "black"
set label "x4,y4" at 9-0.25, 9+0.35 textcolor "black"
set output
set terminal windows
replot
