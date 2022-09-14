clc
clear
close all
w_n=3;
F0=1;
m=0.5;
zeta=0;
r=[0.2,0.9,1,1.1,2];
t_vec=[0:0.1:40];
plotHarmonicResponse(w_n,F_0,m,zeta,r_vec,t_vec);