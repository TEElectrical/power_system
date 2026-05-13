% Aim: Formulation And Calculation Of Ybus Matrix System Using Matlab Software

clc
z12=input('input value of z12=');
z23=input('input value of z23=');
z24=input('input value of z24=');
z34=input('input value of z34=');
z13=input('input value of z13=');
y10=input('input value of y10=');
y20=input('input value of y20=');
y30=input('input value of y30=');
y40=input('input value of y40=');

y12=1/z12;
y23=1/z23;
y24=1/z24;
y34=1/z34;
y13=1/z13;
y14=0;

y21=y12;
y32=y23;
y42=y24;
y43=y34;
y31=y13;
y41=y14;

y11=y10+y12+y13+y14;
y22=y20+y21+y23+y24;
y33=y30+y31+y32+y34;
y44=y40+y41+y42+y43;

% Ybus matrix: diagonal elements are positive, off-diagonal are negative
ybus=[ y11  -y12  -y13  -y14;
      -y21   y22  -y23  -y24;
      -y31  -y32   y33  -y34;
      -y41  -y42  -y43   y44]
