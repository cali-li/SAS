title 'homework_chapter7';
data lll;
input number$ 1-2 X1 X2 X3 Y;
cards;
1 149.3 4.2 108.1 15.9
2 161.2 4.1 114.8 16.4
3 171.5 3.1 123.2 19.0
4 175.5 3.1 126.9 19.1
5 180.8 1.1 132.1 18.8
6 190.7 2.2 137.7 20.4
7 202.1 2.1 146.0 22.7
8 212.4 5.6 154.1 26.5
9 226.1 5.0 162.3 28.1
10 231.9 5.1 164.3 27.6
11 239.0 0.7 167.6 26.3
;
proc reg data=lll;
model Y=X1 X2 X3/tol vif collin;
run;
proc princomp data=lll out=out1 prefix=f;
var X1-X3;
run;
proc print data=out1;
run;
