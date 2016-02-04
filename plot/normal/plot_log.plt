reset
set terminal png
set output "normal.png"
set style data lines
set key right

# Test accuracy vs. training time
set yrange [0:1]
set ytics 0.1
set key right bottom
set ylabel "Accuracy"
set xlabel "Iterations"
plot "normal.test" using 1:3 with lines lt 1 lc rgb "#000000" lw 1.5 title "test accuracy",\
"normal.train" using 1:4 with lines lt 1 lc rgb "#FF2D4C" lw 1.5  title "train accuracy"