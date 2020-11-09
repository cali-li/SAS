title 'homework_chapter7';
data lll;
input number$ 1-2 X1-X5;
cards;
1 75.20 0.140 1.86 0.91 5.21
2 75.15 0.160 2.11 0.74 4.93
3 72.19 0.130 1.52 0.69 4.65
4 72.35 0.130 1.37 0.83 4.87
5 72.74 0.100 1.41 0.72 4.99
6 73.29 0.033 1.07 0.17 3.15
7 73.72 0.033 0.77 0.28 2.78
;
proc factor data=lll rotate=varimax;
var X1-X5;
run;
