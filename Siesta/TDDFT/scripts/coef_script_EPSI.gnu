#set size   1.0, 1.0
set autoscale
set term qt font "Arial,20"

set xlabel  "Wavelength (nm)"  font "Arial ,24"  offset 0,-0.5,0  
set ylabel "Absorption coefficient (a.u.)"  font "Arial, 24"  offset -0.5,0,0
set xrange [200.0:800.0]
#set yrange [0.00:0.65E6]
set xtics font "Arial, 20"
set ytics font "Arial, 20"

set xzeroaxis linetype 1 linecolor rgb "black" linewidth 0.1


plot   'absorp_coef_sih.out' u  (1239.84193/$1):($2)  smooth csplines ls 1 lc rgb "red"   lw 3 title 'SiH (100)'  ,\
       'absorp_coef_oh_30.out' u  (1239.84193/$1):($2)  smooth csplines ls 1 lc rgb "blue"   lw 3 title 'SiOH (100)-30%'  ,\
       'absorp_coef_oh_60.out' u  (1239.84193/$1):($2)  smooth csplines ls 1 lc rgb "green"   lw 3 title 'SiOH (100)-60%'  ,\
       'absorp_coef_oh_100.out' u  (1239.84193/$1):($2)  smooth csplines ls 1 lc rgb "yellow"   lw 3 title 'SiOH (100)-100%'  ,\

